# **asp.net(C#.net)解密JWT**

- Include Package
```
using JWT;
using JWT.Algorithms;
using JWT.Exceptions;
using JWT.Serializers;
using Newtonsoft.Json;
```
- 建立model接參數
```
public sealed class Jwt {
  public string iss { get; set; }
  public string aud { get; set; }
  public string iat { get; set; }
  public string exp { get; set; }
  public string sid { get; set; }
  public string username { get; set; }
}
```

- 使用方法
```
try {
	IJsonSerializer serializer = new JsonNetSerializer();
	var provider = new UtcDateTimeProvider();
	IJwtValidator validator = new JwtValidator(serializer, provider);
	IBase64UrlEncoder urlEncoder = new JwtBase64UrlEncoder();
	IJwtAlgorithm algorithm = new HMACSHA256Algorithm(); // symmetric
	IJwtDecoder decoder = new JwtDecoder(serializer, validator, urlEncoder, algorithm);

	var json = decoder.Decode(token);
	Jwt jwt = JsonConvert.DeserializeObject<Jwt>(json);
	return_string = CommonFunction.Get_Information(jwt.username).id;
} catch (TokenExpiredException) {
	...
}
```
  
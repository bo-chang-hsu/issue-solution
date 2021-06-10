# **asp.net(html)get .cs File Value**
- 在共用文件設參數，我設在底層basepage 
```
public bool debug = true;
```

- asp.net(html) `<%=debug%>` 帶入參數，他會轉字串
```
var debug = "<%=debug%>";
if (debug.toLowerCase() === "true") {
	location.href = ___;
	return;
} else {
	location.href = ___;
	return;
}
```

  
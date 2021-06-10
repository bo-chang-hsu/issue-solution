# **asp頁面底層共用function**

- 建立一個BasePage.cs
```
public class BasePage : System.Web.UI.Page {
	...
}
```
- 個別頁面繼承BasePage就可以共用底層，寫共用function很好用
```
public partial class ReportLost : BasePage {

    protected void Page_Load(object sender, EventArgs e)
    {
		...
    }
}
```
  
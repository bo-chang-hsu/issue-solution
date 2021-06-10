# **asp按鈕配合前端進入後端**

- 程式進入點OnClientClick
```
 OnClientClick="return cancel_lost_card(this);"
```
```
 OnClientClick="return confirm('_____?');"
```
- 因為我想做漂亮一點導入sweetalert 故使用function
- 爬了一堆文試了很久找到這種方法，this帶入按鈕，取消事件
 
```
	function cancel_lost_card(btn) {
		if ($('#Status').text() === "正常") {
			sweet_alert("狀態正常，無法取消掛失!")
			return false;
		} else {
			if (btn.dataset.confirmed) {
				btn.dataset.confirmed = false;
				return true;
			} else {
				event.preventDefault(); //*取消事件
				return sweetAlertConfirm(btn, '確定要取消掛失嗎？')
			}
		}
	}
```
```
	function sweetAlertConfirm(btnDelete,msg) {
		if (btnDelete.dataset.confirmed) {
			btnDelete.dataset.confirmed = false;
			return true;
		} else {
			event.preventDefault(); //*取消事件
			swal({
				title: msg,
			   // icon: "warning",
				buttons: true,
				dangerMode: true,
				buttons: ["取消", "確定"],
				icon : "https://sweetalert2.github.io/images/nyan-cat.gif"
			}).then(function (willDelete) {
				if (willDelete) {
					// Set data-confirmed attribute to indicate that the action was confirmed
					btnDelete.dataset.confirmed = true;
					// Trigger button click programmatically
					btnDelete.click();
			   }
			}).catch(function (reason) {
					// The action was canceled by the user
				});
		}
	}
```

  
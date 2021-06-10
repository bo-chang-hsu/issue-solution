# **asp元件不觸發刷新**
- 使用這種方法可以用後端抓asp元件元素比較安全，重要資料若是使用webmethod去call可以不刷新但是要傳參數進去就有機會被有心人攻擊

- 使用UpdatePanel，上面要有ScriptManager
```
	<%--真按鈕--%>
	<asp:ScriptManager ID="ScriptManager1" runat="server">
	</asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<asp:Button 
				ID="btnSend" 
				runat="server" 
				Text="掛 失" 
				class="login100-form-btn" 
				OnClick="btnSend_Click"
			/>
		</ContentTemplate>
	</asp:UpdatePanel>
```
- 搭配假按鈕去觸發
```
  <%--假按鈕--%>
  <input 
	type="button" 
	value = "掛失" 
	class="login100-form-btn" 
	onclick = "fun_lost_card()" 
  />
```
```
	function fun_lost_card() {
		$('#btnSend').click()
		//redirect('掛失成功。')
	}
```


  
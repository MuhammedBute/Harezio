
<cfif structKeyExists(form, "username") AND structKeyExists(form, "password")>
  <cfset username = trim(form.username)>
  <cfset password = trim(form.password)>
  
  <cfif username EQ "" OR password EQ ""> 
      <cfset errorMessage = "Kullanıcı adı ve şifre boş bırakılamaz.">
  <cfelse>
      <!--- Burada kullanıcı adı ve şifrenin geçerliliğini kontrol edebilirsiniz --->
      <cfif username EQ "admin" AND password EQ "12345">
          <cfset redirectTo = "http://127.0.0.1:8500/test_harezio/dist/index.cfm"> <!--- Başarılı giriş durumunda yönlendirilecek sayfa --->
          <cflocation url="#redirectTo#" addToken="false">
      <cfelse>
          <cfset errorMessage = "Geçersiz kullanıcı adı veya şifre.">
      </cfif>
  </cfif>
<cfelse>
  <cfset errorMessage = "Kullanıcı adı ve şifre gönderilmedi.">
</cfif>

<!--- Hata durumunda kullanıcıyı aynı sayfada hata mesajıyla birlikte göstermek için --->
<cfoutput>
  <cfif structKeyExists(variables, "errorMessage")>
      <div style="color: red; margin-bottom: 1rem;">#errorMessage#</div>
  </cfif>
</cfoutput>

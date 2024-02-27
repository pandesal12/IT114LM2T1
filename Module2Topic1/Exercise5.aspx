<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" MasterPageFile="~/Site1.Master"%>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="reflectionContainer">
        <span class="titleRef">How would you compare plain HTML to ASP.NET WebForms</span><br /><br />
        <span class="contentInfo">I believe that plain HTML and ASP.NET Webforms still share a lot in common, but both have different approaches in web development. I think that HTML would be used more on building the structure of the web page while ASP.NET would hide that structure (Server-side) and also more inclined with backend.</span>
    </div>
    <div class="reflectionContainer">
        <span class="titleRef">The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</span><br /><br />
        <span>Implementing front-end code (Javascript) is when it is not very sensitive and would be fine to been in the client-side; this could either refer to responsiveness of the client side or interactivity of the website. Another example is when performing/Fetching API datas, JS alone would suffice. On the other hand if you want to process sensitive informations, this would be more likely done in a server-side to avoid exposing it to the client. An example of this would be validating passwords from the database, processing sensitive infos and more.</span>
    </div>
    <div class="reflectionContainer">
        <span class="titleRef">Explain what post backs are.</span><br /><br />
        <span> Basically, this is when you submit your data, processing the entire web form to the server which then reloads your page to a new clean page.</span>
    </div>
</asp:Content>
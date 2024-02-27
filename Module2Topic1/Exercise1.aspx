<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" AutoEventWireup="true"%>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
    <style>
        .bodyContainer {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 360px;
            border-radius: 40px;
            background-color: #3C3C3C;
        }

        .bodyContainer > * {
            color: white;
            margin: 10px;
        }

        .buttonsContainer {
            display: flex;
            width: 100%;
            justify-content: center;
            gap: 15px;
            /*justify-content: space-evenly;*/
        }

        .customButtom {
            border-radius: 50px;
            font-size: 20px;
            transition: transform 0.3s ease-in-out
        }

        .customButtom:hover {
            transform: translateY(-5px);
        }

        .Image {
            border-radius: 25px;
            box-shadow: 0px 10px 5px 5px rgb(0,0,0,0.25);
        }

    </style>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <div class="bodyContainer">
            <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
            <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
            <asp:Label ID="Label1" runat="server" Text="Light and Shadow - Hiroyuki Sawano"></asp:Label>

            <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
            <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/album_cover.jpg" Width="200" Height="200" CssClass="Image"/>

            <div class="buttonsContainer">
                <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
                <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
                <asp:Button ID="Button1" runat="server" Text="Prev" CssClass="customButtom"/>
                <asp:Button ID="Button2" runat="server" Text="Play" CssClass="customButtom" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Next" CssClass="customButtom"/>
            </div>


            <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
            <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_event_handling.htm#:~:text=onclick=%22btnclick_Click%22 --%>
            <span ID="spanToggleable" runat="server">Now Playing <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>

            <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
            <%-- Hint: https://learn.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/development/inline-expressions#:~:text=displays%20the%20current%20time --%>
            <span><%=DateTime.Now.ToString("hh:mm tt")%></span>
            <%-- UPDATE --%>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <form runat="server">
            <asp:Label ID="songLabel" runat="server" Text="Cruel Summer - Taylor Swift"></asp:Label>
        </form>
        
        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <form runat="server">
            <asp:Image ID="albumCoverImage" runat="server" ImageUrl="C:\Users\Anthony Manzon\Downloads\Album_picture.jpg" Width="200" Height="200" AlternateText="Lover Album of Cruel Summer by Taylor Swift" />
        </form>
        
        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <form runat="server">
            <button type="button">Prev</button>
            <button type="button">Play</button>
            <button type="button">Next</button>
        </form>
        
        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_first_example.htm#:~:text=convertoupper --%>
        <form runat="server">
            <button type="button" id="playButton">Play</button>
            <span id="nowPlayingSpan"></span>
        </form>
        
        <script>

            const playButton = document.getElementById('playButton');
            const nowPlayingSpan = document.getElementById('nowPlayingSpan');
        
            playButton.addEventListener('click', function() {
                
                const favoriteSong = "Cruel Summer";
        
                nowPlayingSpan.textContent = "Now playing " + favoriteSong;
            });
        </script>
        
        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <%-- Display the current time using template syntax --%>
        Current Time: <%= DateTime.Now.ToString("HH:mm:ss") %>
    </form>
</body>
</html>


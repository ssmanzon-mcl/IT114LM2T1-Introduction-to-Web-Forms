<%@ Page Language="C#" CodeBehind="~/Exercise3.aspx.cs"  Inherits="Module1Exercise1.Exercise3" %>

<%-- Exercise 3: Adding Logic to the WebPage --%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <h1>What's my final grade?</h1>
    <form runat="server">
        <asp:Label runat="server" Text="Enter percentage value of your grade:"></asp:Label>
        <asp:TextBox runat="server" ID="percentageGrade"/>

        <%-- TODO 3.1: Add an event handler for the button below --%>
        <%-- When the button is clicked it should display your equivalent numerial grade in the label with the id "finalGrade" --%>
        <asp:Button runat="server" ID="calculateButton" Text="Calculate" OnClick="CalculateButton_Click" />
        <br />
        <br />
        <asp:Label runat="server" ID="finalGrade" Text=""></asp:Label>
    </form>
</body>
</html>

        <%-- TODO 3.2 Add additional logic to the button such that when the grade of the user is 1.00 it displays a JavaScript alert with a congulatory message --%>
        <asp:Button Text="Calculate" runat="server" />
        <br />
        <br />
        <asp:Label runat="server" Text="Final Grade: "></asp:Label>
        <asp:Label ID="finalGrade" runat="server" Text=""></asp:Label>
        <!DOCTYPE html>
<html>
<head>
    <title>What's my final grade?</title>
</head>
<body>
    <h1>What's my final grade?</h1>
    <form runat="server">
        <asp:Label runat="server" Text="Enter percentage value of your grade:"></asp:Label>
        <asp:TextBox runat="server" ID="percentageGrade"/>

        <%-- Add additional logic to the button such that when the grade of the user is 1.00 it displays a JavaScript alert with a congratulatory message --%>
        <asp:Button runat="server" ID="calculateButton" Text="Calculate" OnClick="CalculateButton_Click" OnClientClick="return validateGrade();" />
        <br />
        <br />
        <asp:Label runat="server" Text="Final Grade: "></asp:Label>
        <asp:Label ID="finalGrade" runat="server" Text=""></asp:Label>
    </form>
    <script>
        function validateGrade() {
            var percentageGrade = document.getElementById('<%= percentageGrade.ClientID %>').value;
            if (percentageGrade.trim() === "100") {
                alert("Congratulations! You got a perfect score!");
            }
            return true; // Returning true allows postback to occur
        }
    </script>
</body>
</html>


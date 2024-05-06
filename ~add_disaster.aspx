<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~add_disaster.aspx.cs" Inherits="AssignmentsSchedulerWeb._add_disaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title></title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
        <link rel="icon" type="image/x-icon" href="favicon.ico"/>
        <link rel="preconnect" href="https://fonts.gstatic.com"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link rel="stylesheet" href="/beautifier/signin-signup.css"/>
        <link rel="stylesheet" href="/beautifier/home.css"/>
        <link rel="stylesheet" href="/beautifier/dashboard.css"/>
    </head>

<body>     
            
            <form name="form" runat="server" >
                <label style="font-weight:bold; position:fixed">| _Survey </label> <br />
                <label style="position:fixed">Personal Details</label>
            
               
                <div class="form-group" id="email">
                  <label class="emailInput" for="email">Full names:</label>
                    <asp:TextBox type="text"  name="email" class="form-control" placeholder=" " id="emailInput" runat="server"></asp:TextBox>
                </div>
            
                <div class="form-group" id="Phone"> 
                  <label class="contactpersonInput" for="name">Email Address:</label>
                    <asp:TextBox type="email" name="phone"  class="form-control" placeholder=" @gmail.com" id="contactpersonInput" runat="server"></asp:TextBox>
                </div>
            
                <div class="form-group" id="industry">
                  <label class="industryInput" for="name">Date Of Birth:</label>
                    <asp:TextBox name="industry" type="tel" MaxLength="2" dateformat="yyyy/MM/dd" displaydateformat="yyyy/MM/dd" class="form-control" placeholder=" " id="industryInput" runat="server"></asp:TextBox>
                </div>
            
                <div class="form-group" id="Address">
                  <label class="addressInput" for="name">Contacts:</label>
                    <asp:TextBox type="tel"  name="location" class="form-control" MaxLength="10" placeholder="123-456-7890" id="addressInput" runat="server"></asp:TextBox>
                </div>

                <br /> <br /> <br /> <br /> <br /> <br /> <br /><br /> <br /> <br />
            
                 <label  class="" for="name">What is your favoutite food?:</label>
                    <br />
                      
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Pizza" /> &nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Pasta" /> &nbsp;
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Pap & Wors" /> &nbsp;
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Other" />

                <br /> 
                <br /> 
            
                 <label  class="" style="font-weight:bold;" for="name">Please rate your level of agreement on a scale from 1 to 5, With 1 being "strongly agree" and 5 being "strongly disagree":</label>
                 <br /> <br />
            
                 <label  class="" for="name"> I like to watch movies:</label>
                     <asp:RadioButtonList ID="rdbmovies" runat="server">
                         <asp:ListItem Text="Strongly Agree" Value="1" />
                         <asp:ListItem Text="Agree" Value="2" />
                         <asp:ListItem Text="Neutral" Value="3" />
                         <asp:ListItem Text=" Disagree" Value="4" />
                         <asp:ListItem Text="Strongly Disagree" Value="5" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Make selection...<br />" ControlToValidate="rdbmovies" runat="server" ForeColor="Red" Display="Dynamic" />
                
                <br />
                
            
                 <label  class="" for="movies"> I like to listen to radio:</label>
                      <asp:RadioButtonList ID="rdbradio" runat="server">
                     <asp:ListItem Text="Strongly Agree" Value="1" />
                     <asp:ListItem Text="Agree" Value="2" />
                     <asp:ListItem Text="Neutral" Value="3" />
                     <asp:ListItem Text=" Disagree" Value="4" />
                     <asp:ListItem Text="Strongly Disagree" Value="5" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Make selection...<br />" ControlToValidate="rdbradio" runat="server" ForeColor="Red" Display="Dynamic" />
                
                 <br />
            
                 <label  class="" for="radio"> I like to eat out:</label>
                      <asp:RadioButtonList ID="rdbeat" runat="server">
                         <asp:ListItem Text="Strongly Agree" Value="1" />
                         <asp:ListItem Text="Agree" Value="2" />
                         <asp:ListItem Text="Neutral" Value="3" />
                         <asp:ListItem Text=" Disagree" Value="4" />
                         <asp:ListItem Text="Strongly Disagree" Value="5" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Make selection...<br />" ControlToValidate="rdbeat" runat="server" ForeColor="Red" Display="Dynamic" />
                
                <br /> 
            
                 <label  class="" for="name"> I like to watch TVs:</label>
                     <asp:RadioButtonList ID="rdbTv" runat="server">
                         <asp:ListItem Text="Strongly Agree" Value="1" />
                         <asp:ListItem Text="Agree" Value="2" />
                         <asp:ListItem Text="Neutral" Value="3" />
                         <asp:ListItem Text=" Disagree" Value="4" />
                         <asp:ListItem Text="Strongly Disagree" Value="5" />
                </asp:RadioButtonList>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Make selection...<br />" ControlToValidate="rdbTv" runat="server" ForeColor="Red" Display="Dynamic" />
                <asp:Button ID="Button1" style="background-color:seagreen; border-color:seagreen" runat="server" OnClick="Button1_Click" class="submit"  Text="Submit Survey"/>



                <br /><br />
                <br /><br />

                <div class="bottom-nav">             
                    <div class="nav-options" style="display: flex; align-items: center;">
                        
                        <div class="nav-item">
                            <button ><a href="~add_disaster.aspx"><img src="https://i.postimg.cc/c18PcJn4/dashboards.png" width="23" height="23" alt="" srcset=""/></a></button>
                            <label style="font-weight:bold;">FILL OUT SURVEY</label>
                        </div>

                        <div class="nav-item">
                            <button ><a href="~dashboard.aspx"><img src="https://i.postimg.cc/c18PcJn4/dashboards.png" width="23" height="23" alt="" srcset=""/></a></button>
                            <label style="font-weight:bold;">VIEW SURVEY RESULTS</label>
                        </div>

                    </div>
                        
                </div>


              </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~dashboard.aspx.cs" Inherits="AssignmentsSchedulerWeb._dashboard" %>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
        <link rel="icon" type="image/x-icon" href="favicon.ico"/>
        <link rel="preconnect" href="https://fonts.gstatic.com"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link rel="stylesheet" href="/beautifier/dashboard.css">
        <link rel="stylesheet" href="/beautifier/home.css">
    
    </head>

    <body>
        
        <div class="dash-holder">

            <div class="holder">
        
        
                <div class="item-holder">

                    <label class="lblHeaders" style="position:fixed;">| Survey Results
                    <br />
                    You're now viewing survey data</label>
                    <br />
                    <br />

                    <div class="products-div-ii">
                        <div class="prod-options">
                            <label style="font-size: 16px; overflow:scroll;" for=""> 
                                Total number of surveys: <asp:Label style="font-weight: 600;" ID="total" runat="server" Text="#"></asp:Label> <br />
                                Average Age: <asp:Label style="font-weight: 600;" ID="age" runat="server" Text="#"></asp:Label> <br />
                                Oldest person to participate: <asp:Label style="font-weight: 600;" ID="oldest" runat="server" Text="#"></asp:Label><br />
                                Youngest person to participate: <asp:Label style="font-weight: 600;" ID="youngest" runat="server" Text="#"></asp:Label>
                                <br />
                                <br />
                                % of people who like Pizza: <asp:Label style="font-weight: 600;" ID="pizza" runat="server" Text="%%">%</asp:Label> <br />
                                % of people who like Pasta: <asp:Label style="font-weight: 600;" ID="pasta" runat="server" Text="%%">%</asp:Label><br />
                                % of people who like Pap & Wors: <asp:Label style="font-weight: 600;" ID="wors" runat="server" Text="%%">%</asp:Label>
                                <br /><br />                          
                                Those who watch Movies: <asp:Label style="font-weight: 600;" ID="movies" runat="server" Text="#"></asp:Label> <br />
                                Those who Eat out: <asp:Label style="font-weight: 600;" ID="eat" runat="server" Text="#"></asp:Label><br />
                                Those who listen to Music: <asp:Label style="font-weight: 600;" ID="listen" runat="server" Text="#"></asp:Label> <br />
                                Who like to watch Tv: <asp:Label style="font-weight: 600;" ID="tv" runat="server" Text="#"></asp:Label>
                            </label> 
                        </div>
                    </div>

                
                </div>

                            <br />
            <br />

            <br />
                <div class="no-surveys">
                    <label style="color: red; font-size: 22px;" id="">No Surveys Available!</label>           
                    <label id="">No survey data has been captured, complete your first survey with us! <label style="color: red;">From Survey Team</label></label>           
                </div>


                
                
                <div class="bottom-nav">             
                    <div class="nav-options" style="display: flex; align-items: center;">
        
                        <div class="nav-item">
                            <button ><a href="~dashboard.aspx"><img src="https://i.postimg.cc/c18PcJn4/dashboards.png" width="23" height="23" alt="" srcset=""/></a></button>
                            <label>Do A Survey</label>
                        </div>

                        <div class="nav-item">
                            <button ><a href="~add_disaster.aspx"><img src="https://i.postimg.cc/c18PcJn4/dashboards.png" width="23" height="23" alt="" srcset=""/></a></button>
                            <label>View Survey Data</label>
                        </div>

                    </div>
        
                </div>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
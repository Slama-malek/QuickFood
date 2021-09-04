<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trace.aspx.cs" Inherits="QuickFood.QuickFood.trace" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

<div class="row">

<div class="col-lg-12 ">
<h5 class="ml5 mt20 ph10 pb5 br-b fw600">
<small class="pull-right fw600"><span class="text-primary">Maps</span></small>
</h5>
<div  class="highchart-wrapper" style="width: 100%; height: 800px; margin: 0 auto">

    <form runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="10000">
            </asp:Timer>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
              <cc1:GMap ID="GMap1" runat="server" Width="1200px" Height="800px" OnLoad="GMap1_Load" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>

</div>
</div>


</div>

    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCHIfMhFQszy0jw08Ykuz5Hr02PL6RSEts"></script>
  

</body>

</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript">
   
var slideimages=new Array()
var slidelinks=new Array()
function slideshowimages(){
for (i=0;i<slideshowimages.arguments.length;i++){
slideimages[i]=new Image()
slideimages[i].src=slideshowimages.arguments[i]
}
}

function slideshowlinks(){
for (i=0;i<slideshowlinks.arguments.length;i++)
slidelinks[i]=slideshowlinks.arguments[i]
}

function gotoshow(){
if (!window.winslide||winslide.closed)
winslide=window.open(slidelinks[whichlink])
else
winslide.location=slidelinks[whichlink]
winslide.focus()
}
</script>
    <style type="text/css">
        .style15
        {
            width: 98px;
        }
        .style16
        {
            width: 709px;
        }
        #slide
        {
            background-color:Black;
        }
        h3
        {
            font-family:Ebrima;
            color:Teal;
            font-size:larger;
            height: 1px;
        }
        #content
        {
            background-color:Black;
            
            }
    #mid
    {
        height: 129px;
        background-color:Teal;

    }
        .style18
        {
            width: 685px;
            height: 125px;
        }
        .style20
        {
            width: 211px;
            height: 125px;
        }
        .style21
        {
            width: 232px;
            height: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; height: 597px;">
        <tr>
            <td class="style15">
                <asp:Image ID="Image1" runat="server" Height="584px" 
                    ImageUrl="~/images/posters.jpg" Width="168px" style="margin-top: 0px" />
            </td>

            <td class="style16">
            <div id="mid">
            <table border="3" style="height: 116px">
            <tr>
            <td class="style21">
                <asp:ImageButton ID="ImageButton8" runat="server" Height="111px" 
                    ImageUrl="~/images/deg.jpg"                         onmouseover="this.src='../hover/COU2.jpg';" 
                        onmouseout="this.src='../images/deg.jpg';"  
 Width="220px" style="margin-top: 0px" />
                   
            </td>
            <td class="style20">
                <asp:ImageButton ID="ImageButton9" runat="server" Height="110px" 
                    ImageUrl="~/images/fac.jpg" onmouseover="this.src='../hover/fac2.jpg';" 
                        onmouseout="this.src='../images/fac.jpg';" Width="220px" />
            </td>
            <td class="style18">
                <asp:ImageButton ID="ImageButton10" runat="server" Height="111px" 
                    ImageUrl="~/images/cou.jpg" onmouseover="this.src='../hover/fac3.jpg';" 
                        onmouseout="this.src='../images/cou.jpg';"  Width="240px" />
            </td>
            </tr>
            </table>
            </div>
                <div id="slide" style="height: 300px; margin-top: 0px">
                <a href="javascript:gotoshow()"><img src="slide.jpg" name="slide" border=0 
                        style="width: 700px; height: 295px; margin-left: 4px"></a>
<script>

    //configure the paths of the images, plus corresponding target links
    slideshowimages("slide.jpg", "slide1.jpg", "slide2.jpg", "slide3.jpg", "slide4.jpg")
    
    var slideshowspeed = 3000

    var whichlink = 0
    var whichimage = 0
    function slideit() {
        if (!document.images)
            return
        document.images.slide.src = slideimages[whichimage].src
        whichlink = whichimage
        if (whichimage < slideimages.length - 1)
            whichimage++
        else
            whichimage = 0
        setTimeout("slideit()", slideshowspeed)
    }
    slideit()
</script>
                 </div>
                 <div id="content" style="height: 150px; width: 703px;">
                <h3>
                This is an E-learning Portal which gives opportunities for students to take up courses.
                The goal of the E-Learning project is to allow students to take up courses online and complete their
                 distance education programme through this online education portal.We provide you with the best
                 faculty.They will help all through your course and you can also give us feedback to help us improve.
                </h3>
               </div>                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

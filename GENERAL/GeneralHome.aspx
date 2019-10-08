<%@ Page Title="" Language="C#" MasterPageFile="~/GENERAL/GeneralMaster.master" AutoEventWireup="true" CodeFile="GeneralHome.aspx.cs" Inherits="GENERAL_GeneralHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/HomeCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHnavigation" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHmain" Runat="Server">
    <div id="outer">
        <div class="section1">
            <div class="section1nested">
                <div class="section1content">
                    <h1>Getting Stated With <span style="color:#4CAF50">GeekNotes</span></h1>
                    <h2>Study Zone</h2>
                </div>
            </div>
        </div>
        <div class="section2">
            <div class="section2a">
                <img src="../IMAGES/thumb.png" /><br /><br />
                Best Notes Provided


            </div>
            <div class="section2a">
                <img src="../IMAGES/library.png" /><br /><br />
                Create Your Notes Library
            </div>
            <div class="section2a">
                 <img src="../IMAGES/dis.png" /><br /><br />
            Interactive Discussion Panel 
            </div>
           
    </div>
        <br />
        <div>
            <div id="content">
                <p>These days scope of professional education is fleeting with demand.
                     Industry requirements are ambitious, one should have specialized knowledge in his respective field for fulfilling the requirements.
                     To face the above challenges the keys are better scope in subject, current affairs. 
                    This project is enacting as a bridge of communication amidst student of different filed and different colleges.</p>

                <p>Study zone is important web based project which is personalized to meet all requirements of students at a single platform. 
                    Eventually it will keep you up-to-date in academic and current affairs which would be accessible in any place of the world.
                     Study zone project can store and provide the material for online learning, performance and assessment of data. 
                    Students can also store their ideas through various process.

                </p>
            </div>
            <div id="contentimage">
                <img src="../IMAGES/PC_ideas.png" />
            </div>
        </div>
        <br />
        <br />
        <br />
        <div>
           <center><h2 id="notes">Latest Notes Available</h2></center> 
            <br />
            <div class="subject">
                <img src="../IMAGES/java.png" height="150" width="150" />
                <div class="sub"><h3>Java</h3></div>
            </div>
            <div class="subject" style="margin-left:135px;">
                <img src="../IMAGES/python.jpg" height="150" width="150" />
               <div class="sub"><h3>Python</h3></div>
            </div>
            <div class="subject" style="margin-left:135px;">
                <img src="../IMAGES/sqlsever.png" height="150" width="150" />
                <div class="sub"><h3>MS Sql Server</h3></div>
            </div> 
           
            <div class="subject" style="margin-left:200px; margin-top:25px;">
                <img src="../IMAGES/android.png" height="150" width="150" />
                <div class="sub"><h3>Android</h3></div>
            </div>
            <div class="subject" style="margin-left:200px;margin-top:25px;">
                <img src="../IMAGES/html.png" height="150" width="150" />
                <div class="sub"><h3>Html</h3></div>
            </div>
        </div>
        </div>
       
      
</asp:Content>


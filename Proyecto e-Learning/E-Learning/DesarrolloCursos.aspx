﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DesarrolloCursos.aspx.cs" Inherits="DesarrolloCursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Proyecto Vicky - Desarrollo del Curso</title>
    <!--<link rel="stylesheet" type="text/css" href="/Estilos/EstilosPrincipalUsuario.css"/>-->
    <link rel="stylesheet" type="text/css" href="/Estilos/EstilosPrincipalUsuario.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <a href="PrincipalUsuario.aspx"><img id="Vikyimage" src="Imagenes/VikyAzul.png" alt="" /></a>
                <nav>
                    <ul>
                        <li>Proyecto Vicky</li>
                    </ul>
                </nav>
                <nav style="float:right; padding-top:10px; margin-right:0;">
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                </nav>
            </div>
            <div>

                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Panel ID="pnTemas" runat="server">
                                <asp:Label ID="lblTemas" runat="server" Text="Sql para Principiantes"></asp:Label>
                                <asp:GridView ID="gdwTemas" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" CellPadding="4" ShowHeader="False" OnRowCommand="gdwTemas_RowCommand">
                                    <Columns>
                                        <asp:ButtonField CommandName="Ver" Text="Ver" />
                                    </Columns>
                                    <EditRowStyle BorderStyle="None" />
                                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" ForeColor="#003399" />
                                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                    <SortedDescendingHeaderStyle BackColor="#002876" />
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Panel ID="pnContenido" runat="server">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                <asp:GridView ID="gdwContenidos" runat="server">
                                    <Columns>
                                        <asp:ButtonField Text="Ver">
                                        <ControlStyle BorderStyle="None" />
                                        </asp:ButtonField>
                                    </Columns>
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>

            </div>
            <div>

            </div>
            <div class="footer">
                Derechos reservados Proyecto Viky
            </div>
        </div>
    </form>
</body>
</html>
#pragma checksum "/home/mtariq/GitRepoTest/dbproject/Views/Home/selection.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "549b08399f3382e97a56d266367e31e289ee3451"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_selection), @"mvc.1.0.view", @"/Views/Home/selection.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/selection.cshtml", typeof(AspNetCore.Views_Home_selection))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "/home/mtariq/GitRepoTest/dbproject/Views/_ViewImports.cshtml"
using newProject;

#line default
#line hidden
#line 2 "/home/mtariq/GitRepoTest/dbproject/Views/_ViewImports.cshtml"
using newProject.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"549b08399f3382e97a56d266367e31e289ee3451", @"/Views/Home/selection.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d6a2f3786e4a7d3d9093eb022400174a8bab7071", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_selection : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Ingredient>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-area", "", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Home", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Whatsinyourfridge", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "/home/mtariq/GitRepoTest/dbproject/Views/Home/selection.cshtml"
  
    ViewData["Title"] = "selection";

#line default
#line hidden
            BeginContext(70, 4, true);
            WriteLiteral("<h2>");
            EndContext();
            BeginContext(75, 17, false);
#line 5 "/home/mtariq/GitRepoTest/dbproject/Views/Home/selection.cshtml"
Write(ViewData["Title"]);

#line default
#line hidden
            EndContext();
            BeginContext(92, 39, true);
            WriteLiteral("</h2>\r\n<h1>Select Ingredients</h1>\r\n\r\n\t");
            EndContext();
            BeginContext(131, 3802, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "e11e3f2cc96f4a7b89b7d3471cf46939", async() => {
                BeginContext(137, 3789, true);
                WriteLiteral(@"
		<meta name=""viewport"" content=""width=device-width, initial-scale=1"">
		
			<style >
			/* The container */
			.container1 {
				display: block;
				position: relative;
				padding-left: 35px;
				margin-bottom: 12px;
				cursor: pointer;
				font-size: 22px;
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none;
			}

			/* Hide the browser's default checkbox */
			.container1 input {
				position: absolute;
				opacity: 0;
				cursor: pointer;
				height: 0;
				width: 0;
			}

			/* Create a custom checkbox */
			.checkmark {
				position: absolute;
				top: 0;
				left: 0;
				height: 25px;
				width: 25px;
				background-color: #eee;
			}

			/* On mouse-over, add a grey background color */
			.container1:hover input ~ .checkmark {
				background-color: #ccc;
			}

			/* When the checkbox is checked, add a blue background */
			.container1 input:checked ~ .checkmark {
				background-color: #2196F3;
			}
");
                WriteLiteral(@"
			/* Create the checkmark/indicator (hidden when not checked) */
			.checkmark:after {
				content: """";
				position: absolute;
				display: none;
			}

			/* Show the checkmark when checked */
			.container1 input:checked ~ .checkmark:after {
				display: block;
			}

			/* Style the checkmark/indicator */
			.container1 .checkmark:after {
				left: 9px;
				top: 5px;
				width: 5px;
				height: 10px;
				border: solid white;
				border-width: 0 3px 3px 0;
				-webkit-transform: rotate(45deg);
				-ms-transform: rotate(45deg);
				transform: rotate(45deg);
			}
		
			body {
				font-family: Arial, Helvetica, sans-serif;
			}

			/* Full-width input fields */
			input[type=text], input[type=password], input[type=Num] {
				width: 100%;
				padding: 12px 20px;
				margin: 8px 0;
				display: inline-block;
				border: 1px solid #ccc;
				box-sizing: border-box;
			}

			/* Set a style for all buttons */
			button {
				background-color: #4CAF50;
				color: white;
		");
                WriteLiteral(@"		padding: 14px 20px;
				margin: 8px 0;
				border: none;
				cursor: pointer;
				width: 100%;
			}

				button:hover {
					opacity: 0.8;
				}

			/* Extra styles for the cancel button */
			.cancelbtn {
				width: auto;
				padding: 10px 18px;
				background-color: #f44336;
			}

			/* Center the image and position the close button */
			.imgcontainer {
				text-align: center;
				margin: 24px 0 12px 0;
				position: relative;
			}

			
			.container {
				padding: 16px;
			}

			span.psw {
				float: right;
				padding-top: 16px;
			}

			/* The Modal (background) */
			.modal {
				display: none; /* Hidden by default */
				position: fixed; /* Stay in place */
				z-index: 1; /* Sit on top */
				left: 0;
				top: 0;
				width: 100%; /* Full width */
				height: 100%; /* Full height */
				overflow: auto; /* Enable scroll if needed */
				background-color: rgb(0,0,0); /* Fallback color */
				background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
				pa");
                WriteLiteral(@"dding-top: 60px;
			}

			/* Modal Content/Box */
			.modal-content {
				background-color: #fefefe;
				margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
				border: 1px solid #888;
				width: 80%; /* Could be more or less, depending on screen size */
			}

			/* The Close Button (x) */
			.close {
				position: absolute;
				right: 25px;
				top: 0;
				color: #000;
				font-size: 35px;
				font-weight: bold;
			}

				.close:hover,
				.close:focus {
					color: red;
					cursor: pointer;
				}

			/* Add Zoom Animation */
			.animate {
				-webkit-animation: animatezoom 0.6s;
				animation: animatezoom 0.6s
			}

			}
		</style>

		

	");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(3933, 3, true);
            WriteLiteral("\r\n\t");
            EndContext();
            BeginContext(3936, 444, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "e19163e8281f4d3d97ccebebef4e4ab8", async() => {
                BeginContext(3942, 6, true);
                WriteLiteral("\r\n\r\n\r\n");
                EndContext();
#line 187 "/home/mtariq/GitRepoTest/dbproject/Views/Home/selection.cshtml"
             foreach(var ingredient in Model) 
					{

		

#line default
#line hidden
                BeginContext(4010, 37, true);
                WriteLiteral("\t\t<label class=\"container1\">\r\n\t\t\t<h3>");
                EndContext();
                BeginContext(4048, 25, false);
#line 192 "/home/mtariq/GitRepoTest/dbproject/Views/Home/selection.cshtml"
           Write(ingredient.IngredientName);

#line default
#line hidden
                EndContext();
                BeginContext(4073, 83, true);
                WriteLiteral("</h3>\r\n\t\t\t<input type=\"checkbox\">\r\n\t\t\t<span class=\"checkmark\"></span>\r\n\t\t</label>\r\n");
                EndContext();
#line 196 "/home/mtariq/GitRepoTest/dbproject/Views/Home/selection.cshtml"

                    }

#line default
#line hidden
                BeginContext(4181, 12, true);
                WriteLiteral("\t\t\r\n\t\t\r\n    ");
                EndContext();
                BeginContext(4193, 173, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "4b9e9ace7ec04f0983ca27c10096c2df", async() => {
                    BeginContext(4261, 101, true);
                    WriteLiteral("<button onclick=\"\" style=\"width:auto;\">What can you make?</button><span class=\"border\"></span></span>");
                    EndContext();
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Area = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(4366, 7, true);
                WriteLiteral("\r\n\t\t\r\n\t");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(4380, 6, true);
            WriteLiteral("\r\n\r\n\r\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Ingredient>> Html { get; private set; }
    }
}
#pragma warning restore 1591

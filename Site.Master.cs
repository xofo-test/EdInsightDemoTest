using System;
using System.Web;

namespace Edinsight
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected string HomeMenuClass { get { return MenuClass("Default.aspx"); } }
        protected string ReportsMenuClass { get { return MenuClass("StandardsMastery.aspx"); } }
        protected string AssessmentMenuClass { get { return MenuClass("EditAssessment.aspx"); } }

        /// <summary>The menu item class for a page, marking the current section.</summary>
        private string MenuClass(string page)
        {
            string current = VirtualPathUtility.GetFileName(Request.AppRelativeCurrentExecutionFilePath);
            bool isCurrent = string.Equals(current, page, StringComparison.OrdinalIgnoreCase);
            return isCurrent ? "menu-item is-current" : "menu-item";
        }
    }
}

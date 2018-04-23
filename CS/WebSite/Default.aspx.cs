using System;
using System.Threading;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(IsPostBack)
            // Emulate a long time postback.
            Thread.Sleep(500);
        else
            Session["Count"] = null;
        lbl.Text = GetPostBackCount();
    }

    private string GetPostBackCount() {
        int count = 0;
        if(Session["Count"] != null) {
            count = (int)Session["Count"] + 1;
            Session["Count"] = count;
        } else
            Session["Count"] = 0;
        return count.ToString();
    }

    protected void btn_Click(object sender, EventArgs e) {
        // Some code.
    }
}
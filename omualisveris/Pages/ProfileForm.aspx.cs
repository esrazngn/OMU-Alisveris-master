using omualisveris.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace omualisveris.Pages
{
    public partial class ProfileForm : System.Web.UI.Page
    {
        public static User user;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.nameLabel.Text = user.Name + " " + user.Surname;
            this.emailLabel.Text = user.EmailAddress;
        }
    }
}
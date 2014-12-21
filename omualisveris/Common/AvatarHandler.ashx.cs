using omualisveris.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace omualisveris.Common
{
    /// <summary>
    /// Summary description for AvatarHandler
    /// </summary>
    public class AvatarHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/jpg";
            context.Response.BinaryWrite(ProfileForm.user.ProfileImage);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
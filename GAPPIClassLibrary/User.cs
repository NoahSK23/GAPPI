using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GAPPIClassLibrary
{
    public class User
    {
        public int UserID { get; set; }
        public int TUID { get; set; }
        public int RoleID { get; set; }
        public string CommonName { get; set; }
        public string Email { get; set; }
        public bool IsAdmin { get; set; } = false;
    }
}

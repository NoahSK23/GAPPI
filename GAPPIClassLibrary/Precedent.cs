using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GAPPIClassLibrary
{
    public class Precedent
    {
        public int PrecedentID { get; set; }
        public string Title { get; set; }
        public string Location { get; set; }
        public string Date { get; set; }
        public string Designer { get; set; }
        public string SuggestedBy { get; set; }
    }
}

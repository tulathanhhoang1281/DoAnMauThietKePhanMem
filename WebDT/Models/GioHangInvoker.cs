using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;

namespace WebDT.Models
{
    public class GioHangInvoker
    {
        private readonly List<GioHangCommand> _command = new List<GioHangCommand>();

        public void SetCommand (GioHangCommand command)
        {
            _command.Add (command);
        }

        public void ExecuteCommand()
        {
            foreach (var command in _command)
            {
                command.Execute();
            }
            _command.Clear();
        }
    }
}
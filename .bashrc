#  This file is part of Leash (Browser Shell)
#  Copyright (C) 2013-2016  Jakub Jankiewicz <http://jcubic.pl>
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

#non interactive shell don't expand aliases
shopt -s expand_aliases

# man output formatting
export MAN_KEEP_FORMATTING=1
export PATH=$PATH:/usr/games

export TERM="ansi" #force colors for dircolors
alias grep="grep --color=always"
if [ -x /usr/bin/dircolors ]; then
    #Nice colors
    eval "`dircolors -b`"
    alias ls="ls --color=always"
fi

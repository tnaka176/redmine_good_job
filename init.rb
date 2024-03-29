# Good Job plugin for Redmine
# Copyright (C) 2011  Takashi Takebayashi
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
require 'redmine'
require_relative 'lib/good_job_hook_view_listeners'

Redmine::Plugin.register :redmine_good_job do
  name 'Redmine Good Job plugin'
  author 'Takashi Takebayashi'
  description 'This is a Good Job plugin for Redmine'
  version '0.0.1.1'
  url "https://bitbucket.org/changeworld/redmine_good_job" if respond_to?(:url)
  requires_redmine :version_or_higher => '0.9.0'

  project_module :good_job do
    permission :manage_good_job, {:good_job_settings => [:show]}, :require => :member
  end
end

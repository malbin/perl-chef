#
# Author:: David A. Golden
# Cookbook Name:: perlbrew
# Resource:: perlbrew_run
#
# Copyright:: 2012, David A. Golden <dagolden@cpan.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :run

def initialize(*args)
  super
  @action = :run
end

attribute :command, :name_attribute => true, :kind_of => String
attribute :perlbrew, :kind_of => String, :required => true
attribute :cwd, :kind_of => String
attribute :environment, :kind_of => Hash, :default => {}

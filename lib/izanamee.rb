=begin
/*************************IZANAMEE-LICENSE-START*********************************
 * Copyright 2015 CapitalOne, LLC.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *************************IZANAMEE-LICENSE-END*********************************/
=end

$LOAD_PATH.unshift(File.dirname(__FILE__))

module Izanamee
  @@vagrant_conf
  @@izanamee_lib_root = "#{File.dirname(__FILE__)}/"

  def self.config=(config)
    @@vagrant_conf = config
  end

  def self.config
    if @@vagrant_conf != nil
      @@vagrant_conf
    else
      raise 'Vagrant config has not been set...'
    end
  end

  def self.izanamee_lib_root
    @@izanamee_lib_root
  end

  # Load our various support modules
  require 'izanamee/proxy_helper'
  require 'izanamee/vm_helper'
  require 'izanamee/provisioner/provisioners'
end
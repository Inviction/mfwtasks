#!/usr/bin/tclsh
#
# ps3mfw -- PS3 MFW creator
#
# Copyright (C) Anonymous Developers (Code Monkeys)
# This software is distributed under the terms of the GNU General Public
# License ("GPL") version 3, as published by the Free Software Foundation.

# Priority: 2200
# Description: Replace resource files (USE CAUTION)

# Option --explore-category-tv: explore_category_tv.rco file name
# Option --explore-category-user: explore_category_user.rco file name
# Option --explore-category-sysconf: explore_category_sysconf.rco file name
# Option --explore-category-psn: explore_category_psn.rco file name
# Option --explore-category-photo: explore_category_photo.rco file name
# Option --explore-category-network: explore_category_network.rco file name
# Option --explore-category-music: explore_category_music.rco file name
# Option --explore-category-game: explore_category_game.rco file name
# Option --explore-category-video: explore_category_video.rco file name
# Option --explore-category-friend: explore_category_friend.rco file name
# Option --coldboot-raf: coldboot.raf video filename
# Option --coldboot-stereo: coldboot_stereo.ac3 audio filename
# Option --coldboot-multi: coldboot_multi.ac3 audio filename


# Type --explore-category-tv: file open {"RCO File" {rco}}
# Type --explore-category-user: file open {"RCO File" {rco}}
# Type --explore-category-sysconf: file open {"RCO File" {rco}}
# Type --explore-category-psn: file open {"RCO File" {rco}}
# Type --explore-category-photo: file open {"RCO File" {rco}}
# Type --explore-category-network: file open {"RCO File" {rco}}
# Type --explore-category-music: file open {"RCO File" {rco}}
# Type --explore-category-game: file open {"RCO File" {rco}}
# Type --explore-category-video: file open {"RCO File" {rco}}
# Type --explore-category-friend: file open {"RCO File" {rco}}
# Type --coldboot-raf: file open {"RAF Video" {raf}}
# Type --coldboot-stereo: file open {"AC3 Audio" {ac3}}
# Type --coldboot-multi: file open {"AC3 Audio" {ac3}}

namespace eval change_resource_files {

    array set ::change_resource_files::options {
        --explore-category-tv "/path/to/file"
		--explore-category-user "/path/to/file"
	    --explore-category-sysconf "/path/to/file"
		--explore-category-psn "/path/to/file"
		--explore-category-photo "/path/to/file"
		--explore-category-network "/path/to/file"
		--explore-category-music "/path/to/file"
		--explore-category-game "/path/to/file"
		--explore-category-video "/path/to/file"
		--explore-category-friend "/path/to/file"
		--coldboot-raf "/path/to/file"
        --coldboot-stereo "/path/to/file"
        --coldboot-multi "/path/to/file"
    }

    proc main {} {
        variable options
        
		set explore_category_tv.rco [file join dev_flash vsh resource explore_category_tv.rco]
		set explore_category_user.rco [file join dev_flash vsh resource explore_category_user.rco]
		set explore_category_sysconf.rco [file join dev_flash vsh resource explore_category_sysconf.rco]
		set explore_category_psn.rco [file join dev_flash vsh resource explore_category_psn.rco]
		set explore_category_photo.rco [file join dev_flash vsh resource explore_category_photo.rco]
		set explore_category_network.rco [file join dev_flash vsh resource explore_category_network.rco]
		set explore_category_music.rco [file join dev_flash vsh resource explore_category_music.rco]
        set explore_category_game.rco [file join dev_flash vsh resource explore_category_game.rco]
		set explore_category_video.rco [file join dev_flash vsh resource explore_category_video.rco]
		set explore_category_friend.rco [file join dev_flash vsh resource explore_category_friend.rco]
        set coldboot_raf [file join dev_flash vsh resource coldboot.raf]
        set coldboot_stereo [file join dev_flash vsh resource coldboot_stereo.ac3]
        set coldboot_multi [file join dev_flash vsh resource coldboot_multi.ac3]        

          if {[file exists $options(--explore-category-tv)] == 0 } {
			log "Skipping explore_category_tv.rco, $options(--explore-category-tv) does not exist"
        } else {
            log "Please note to add the TV category option in MFW Builder."
			::modify_devflash_file ${explore_category_tv.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-tv)
		}
		  
		  if {[file exists $options(--explore-category-user)] == 0 } {
            log "Skipping explore_category_user.rco, $options(--explore-category-user) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_user.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-user)
		}
		
		 if {[file exists $options(--explore-category-sysconf)] == 0 } {
            log "Skipping explore_category_sysconf.rco, $options(--explore-category-sysconf) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_sysconf.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-sysconf)
		}
		 
		if {[file exists $options(--explore-category-psn)] == 0 } {
            log "Skipping explore_category_psn.rco, $options(--explore-category-psn) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_psn.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-psn)
		}
		
		if {[file exists $options(--explore-category-photo)] == 0 } {
            log "Skipping explore_category_photo.rco, $options(--explore-category-photo) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_photo.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-photo)
		}
		
		if {[file exists $options(--explore-category-network)] == 0 } {
            log "Skipping explore_category_network.rco, $options(--explore-category-network) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_network.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-network)
		}
		
		if {[file exists $options(--explore-category-music)] == 0 } {
            log "Skipping explore_category_music.rco, $options(--explore-category-music) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_music.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-music)
		}
		
		if {[file exists $options(--explore-category-game)] == 0 } {
            log "Skipping explore_category_game.rco, $options(--explore-category-game) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_game.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-game)
		}
		
		if {[file exists $options(--explore-category-video)] == 0 } {
            log "Skipping explore_category_video.rco, $options(--explore-category-video) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_video.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-video)
		}
		
		if {[file exists $options(--explore-category-friend)] == 0 } {
            log "Skipping explore_category_friend.rco, $options(--explore-category-friend) does not exist"
        } else {
            ::modify_devflash_file ${explore_category_friend.rco} ::change_resource_files::copy_resource_file $::change_resource_files::options(--explore-category-friend)
		}
        
		if {[file exists $options(--coldboot-raf)] == 0 } {
            log "Skipping coldboot.raf, $options(--coldboot-raf) does not exist"
        } else {
            ::modify_devflash_file ${coldboot_raf} ::change_resource_files::copy_resource_file $::change_resource_files::options(--coldboot-raf)
        }

        if {[file exists $options(--coldboot-stereo)] == 0 } {
            log "Skipping coldboot_stereo, $options(--coldboot-stereo) does not exist"
        } else {
            ::modify_devflash_file ${coldboot_stereo} ::change_resource_files::copy_resource_file $::change_resource_files::options(--coldboot-stereo)
        }

        if {[file exists $options(--coldboot-multi)] == 0 } {
            log "Skipping coldboot_multi, $options(--coldboot-multi) does not exist"
        } else {
            ::modify_devflash_file ${coldboot_multi} ::change_resource_files::copy_resource_file $::change_resource_files::options(--coldboot-multi)
        }
    }
	 
    proc copy_resource_file { dst src } {
        if {[file exists $src] == 0} {
            die "$src does not exist"
        } else {
            if {[file exists $dst] == 0} {
                die "$dst does not exist"
            } else {
                log "Replacing default resource file - [file tail $dst] with [file tail $src]"
                copy_file -force $src $dst
            }
        }
    }
}

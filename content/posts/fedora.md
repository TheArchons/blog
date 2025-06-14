+++
title = 'Lessons learned from 5 years of Linux'
date = 2025-03-23T20:02:58-07:00
draft = true
+++

I first started running linux around 5 years ago, to learn more about computers and operating systems. Now, I have gained a lot of experience and switched a lot of distros. I will admit I made many mistakes and chose distros that didn't exactly fit my needs, but now I believe I have finally settled on one. Fedora Linux, specifically the KDE spin variant. In this blog, I will dive into my history with various Linux distros, whose experiences led me to Fedora today.

# Pop! OS

Although I have owned a Raspberry Pi for many years, my first real experiment into Linux came with [Pop! OS](https://system76.com/pop/). I started with something simple and easy, just to dip my toes into Linux and learn the basics. I owned both a laptop and desktop, so I decided to try installing it on my laptop first to see how well I would be able to adjust. Plus, I played a lot of video games at the time, and didn't want to constantly reboot to switch between Linux and Windows. Things went well, and I was able to slowly figure out how everything worked. However, I wanted more speed and flexibility, especially given the fact that my laptop had a wimpy Intel i3-7200U inside.

# Arch

Eventually, I had some time on my hands, and so decided to explore [Arch Linux](https://archlinux.org/).Things initially started off horribly, and I struggled for hours to get an install working, especially since there was no easy GUI installer back then. However, I eventually did get everything working, and could claim that I was an Arch user to flex on others. This initially worked well, and was much faster than Pop! OS. Plus, the AUR was super convenient, giving me much more freedom to install things since it has virtually every package needed. However, enjoyment this didn't last long. Since Arch is a rolling-release distro, I things kept on breaking when I needed to use my laptop. Eventually I gave up one day when my wifi drivers stopped working for no apparent reason after an update, making my laptop completely useless. This may have been acceptable to others, but to me this was a dealbreaker since I needed a reliable laptop for my work. 

# Windows

Given the unreliability with Arch, I decided to return to Windows for a bit, even though it was slow. I knew I wanted to try more distros, but at that time I wanted to do other things, so I just dealt with Windows rather than learning something new. Using Windows reminded me of why I switched initially, given all of its annoyances. Windows had tons of bloat built in, especially OneDrive that kept bugging me until I disabled it. Plus, Windows has a large amount of hostile tracking, along with straight up poor GUI design. Somehow control panel is still used for some settings, while others use the "modern" settings app that was annoying to navigate.

# Manjaro

Around 6 months later, I was ready to try again. I liked using Arch except for the reliability aspect, so I hoped that [Manjaro Linux](https://manjaro.org/) would give a similar experience to Arch, just without the hassle of things breaking without warning. This time, I decided to commit a bit more fully, and decided to dualboot Manjaro + Windows on both my desktop and laptop. This turned out quite well, and definitely met my expectations. It had the same great features as Arch, along with the stability. Plus, it came with Nvidia drivers, which worked perfectly on my RTX 2070. It was also where I discovered how great KDE was. Before Manjaro, I used Gnome for Pop! OS since it was the default, and XFCE for Arch. However, KDE was wonderful. It's UI is very reminiscent of Windows, but allowed you to customize it however you wanted. They even have all of your settings in one place! Did you know that you can add widgets to the taskbar? Personally, I include a music widget on mine, so I know what song I am listening to all the time, without having to open Spotify.

<figure>
    <img src="/img/fedora/taskbar.png"
         alt="Image of a taskbar, with a widget showing the currently playing song on the left">
    <figcaption>The taskbar, showing Lofi being played. NoteL this screenshot was taken on Fedora, but it was similar on Manjaro.</figcaption>
</figure>

However, Manjaro was not flawless either. One day, I wanted to try Hyprland, but it simply wouldn't work. This is because Manjaro maintains its stability by holding packages before release for two weeks, allowing them to fix and critical issues beforehand. However, given Hyprland's fast paced development, it simply refused to work, and I gave up on setting it up after a while. Plus, I heard of a different distro that was said to have been better.

# NixOS

[NixOS](https://nixos.org/) is an immutable and atomic distro, esseentially allowing you to write code (called dotfiles) to define your operating system, especially with packages and configurations. This had a number of advantages that attracted me:

1. Dotfiles were mostly compatible accross all devices. This meant that I could quickly recreate my installation on another computer with completely different hardware. Switching computers would turn from something that took around a day to at most an hour.

2. Similar to the last point, you can also revert to previous versions of your dotfiles, incase something breaks. Notably, while normally an improper fstab file would require you to boot into a live USB and manually fix the issue, on NixOS I simply rolled back to the latest working version, and fixed the issue without needing any separate USBs or installations.

3. I could try other people's configurations quickly. Although I never ended up using this feature very often, I had the ability to try things like Hyprland quickly, and without worrying if it would break my distro permanently, requiring a reinstall.

4. Dotfiles meant that I could syncronize my configuration with my laptop, rather than needing to install and setup something twice if I also wanted it on my laptop.

For those reasons, I decided to give NixOS a try. Like Manjaro, I dualbooted NixOS and Windows on both my laptop and desktop. Although it took some time to setup, I was able to make use of all the advantages listed above. I happily used NixOS for around a year, but ran into a major problem that was a dealbreaker for me.

Although I have an interest in computers, they have always primarly been a tool for me. My philosophy is that my computer should primarly serve to help me be productive, rather than needing to endlessly tinker. Although I knew NixOS would not suddenly irreversibly break like Arch, it was incredibly inconvenient to add some packages. It was great that many packages worked right out of the box, but others were difficult or near impossible. Plus, at the time I was incredibly busy, and didn't really have time to write code for NixOS. One notable example is the fingerprint drivers for my laptop, the Lenovo ThinkPad T480. Although there were drivers available, they needed to be separately installed, and it is fundamntally impossibl to install such drivers the normal way. Instead, the only option available were Nix flakes, a separate system to install programs. For other distributions, installing such a driver would have taken about five minutes, but with NIxOS it took me hours to figure out how to install the driver, especially since the repository did not have instructions for NixOS installation (fair, given how few people use NixOS). It often felt like I was fighting the operating system to do what I want, rather than instructing it.



# Fedora

After wrestling NixOS to do what I wanted for a year, I ended up just switching to [Fedora](https://fedoraproject.org/), specifically the [KDE Spin version]([Fedora KDE Plasma Desktop | The Fedora Project](https://fedoraproject.org/spins/kde))
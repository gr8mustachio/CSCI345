1. What is iptables?
	Iptables is a linux program that handles IP packets and firewall rules. It is a very in-depth, verbose system. It allows for fine-tune managment of every aspect of firewall and handling of packets. With this, you can turn your computer into a hermit by blocking all traffic, or make it the total opposite, although it is a bad idea

2. What is UFW?
	UFW (Uncomplicated Firewall) is a firewall system that is built ON TOP of iptables to provide a much more user-friendly firewall experience than that of iptables, so the commnands are much simpler and straight to the point.

3. Why might you want to use UFW over iptables?
	It is SO MUCH SIMPLER HOLY COW. I was trying to understand the iptables documentation to try and get a grasp but I was having a lot of trouble until I looked up what ufw actually is and realized it was the same thing, just made a lot easier and built on top of iptables. I am trying to do something pretty simple (blocking all but SSH and HTTP) it made a lot more sense to use ufw. If your firewall needs are complicated though, it would be better to use iptables.

4. Why might you want to disallow all traffic other than specified?
	For security reasons. You are only becoming safer by blocking more things in your firewall 

5. Why are both important if you are administrating a machine?
	They are both imprtant because they play a critcal role in safeguarding a machine. With them, you could block specific explicit websites from being able to be viewed, and/or stop malicious users from being able to ssh into your machine by having your ip address being the only one allowed to remotly connect to the machine.

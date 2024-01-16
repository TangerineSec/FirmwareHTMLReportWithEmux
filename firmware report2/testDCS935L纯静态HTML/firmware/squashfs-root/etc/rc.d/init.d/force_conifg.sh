#!/bin/sh

/usr/sbin/userconfig -write MD_BLOCK Percentage 1
/usr/sbin/userconfig -write AUDIO_PROFILE0 SpeakerEnable 0
/usr/sbin/userconfig -write QoS VideoDSCP 63
/usr/sbin/userconfig -write QoS AudioDSCP 63
/usr/sbin/userconfig -write INFO Nipca 1.9.7

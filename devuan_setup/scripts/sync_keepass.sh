#!/bin/bash
lftp -e "mirror -c -R --only-newer --verbose ~/.keepass /Keepass;quit;" u353819.your-storagebox.de
lftp -e "mirror -c --only-newer --verbose /Keepass ~/.keepass;quit;" u353819.your-storagebox.de

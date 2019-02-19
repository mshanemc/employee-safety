sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s -o safe.ty --userprefix user -n
sfdx force:source:push
sfdx force:user:permset:assign -n Safety
sfdx force:org:open
# login for mobile
sfdx shane:user:password:set -g User -l User
sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s -o safe.ty --1prefix user -n
sfdx force:source:push
sfdx force:user:permset:assign -n Safety
sfdx force:org:open
# login for mobile
sfdx shane:user:password:set -g User -l User
sfdx force:data:bulk:upsert -f data/incident_reports.csv -s Incident_Report__c -i id
sfdx force:data:bulk:upsert -f data/observations.csv -s Observation__c -i id
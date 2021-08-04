// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

List<Lead> records = [SELECT count(id),LeadSource FROM Lead
        Where LeadSource !=null
        group by LeadSource
        having count(id)>3];
for(Lead LeadRecords : records){
    system.debug(LeadRecords);
}  
 

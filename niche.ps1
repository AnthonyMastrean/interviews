# Let's say we have an entry point like this...
#
#   PS> niche "foo"
# 
# And a data structure like this...
# 
#   @{
#     "keyword" = @{
#       "School A" = 10;
#       "School B" = 2;
#     }
#   }
#
# We can search the index like...
#
#   $idx["keyword"] | %{ Write-Host "Matches ${count} reviews for ${school}" }
# 

Get-ChildItem .\niche\*.ps1 | %{ . $_ }

Get-Content .\urls.txt `
  | Initialize-ReviewCache
  # | %{ Invoke-ParseReview $_ } `
  # | %{ Invoke-IndexReview $_ (Get-Content .\stopWords.txt) } `
  # | Export-CliXml .\.index.xml

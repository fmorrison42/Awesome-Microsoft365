##  SIMPLY BECAUSE YOU ABSOLUTELY NEED THIS IN YOUR LIFE DID I ADD IT TO THE REPO!!!

Function Get-DadJoke {
    
    Write-Output "Thinking up a good one."
    
    $Opener = 'Stop me if you heard this one.','Here is a good one.'
    
    $JokeList = ((Invoke-WebRequest -Uri 'https://www.reddit.com/r/dadjokes').links).where({$PSItem.href -like "https://www.reddit.com/r/dadjokes/comments/*"}).href | Get-Random

    $JokeData = ((Invoke-WebRequest -Uri $JokeList).content).split('><') | Select-String "meta property=*"

    $Joke = ($JokeData | Select-String 'meta property="og:title"*')
    $Joke = $Joke.ToString().Trim('meta property="og:title" content="').Trim(' • /r/dadjokes')

    $Punchline = ($JokeData | Select-String 'meta property="og:description"*')
    $Punchline = $Punchline.ToString().Trim('meta property="og:description" content="').Trim('"')

    Write-Output ($Opener | Get-Random)

    Write-Output $Joke
    Start-Sleep -Seconds 3
    Write-Output $Punchline

}


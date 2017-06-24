$codeFolder = "c:\code";

function code() {
  cd $codeFolder;
}

function gclone($url) {
  $pwd = pwd;
  $baseUrl = $url.split(":")[0];
  $cog = $url.split(":")[1].split("/")[0];
  $repo = $url.split(":")[1].split("/")[1];
  $folder = $repo.substring(0, $repo.length - 4);
  $cloneUrl = $baseUrl + ":kenny-hung/$repo";

  cd $codeFolder;
  if (-Not (Test-Path $cog)) {
    mkdir $cog
  }

  cd $cog

  git clone $cloneUrl

  cd $folder
  git remote add upstream $url

  cd $pwd
}

function repo($selected) {
  $repos = Get-ChildItem -recurse -directory -attribute hidden -filter ".git" | Select-Object FullName

  if ($repos.length -le 1) {
    $selected = 1;
  }

  $count = 1;
  foreach ($repo in $repos | Sort-Object) {
    $repo = $repo.FullName;
      $repo = $repo.substring(0, $repo.length - 4);
    if ($selected) {
      if ($selected -eq $count) {
        cd $repo;
      }
    }
    else {
      echo "[repo $count] $repo";
    }
    $count++;
  }
}

function sln($version, $selected) {
  if ($version -ne 2015 -and -not $selected) {
    $selected = $version
    $version = 2017
  }

  if (-not $version) {
    $version = 2017
  }
  $solutionFiles = Get-ChildItem -recurse -name | select-string -pattern ".sln$" | Sort-Object

  if ($solutionFiles.length -le 1) {
    $selected = 1;
  }
  $count = 1;
  foreach ($solutionFile in $solutionFiles | Sort-Object) {
    if ($selected) {
      if ($selected -eq $count) {
      if ($version -eq 2015) {
        $exe = 'C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe'
      } else {
        $exe = 'C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe'
      }
        & $exe $solutionFile;
      }
    }
    else {
      echo "[sln $count] $solutionFile";
    }
    $count++;
  }
}

function web($url) {
  & 'C:\Program Files (x86)\Google\Chrome\Application\chrome' $url
}

function github() {
  $upstreamUrl = git remote get-url upstream
  $split = $upstreamUrl.split(":");
  $gitUrl = $split[1]
  $gitUrl = $gitUrl.substring(0, $gitUrl.length - 4);
  $gitUrl = "https://github.je-labs.com/$gitUrl"
  web($gitUrl)
}

function mygithub() {
  $upstreamUrl = git remote get-url upstream
  $split = $upstreamUrl.split(":");
  $gitUrl = $split[1]
  $gitUrl = $gitUrl.substring(0, $gitUrl.length - 4);
  $gitUrl = $gitUrl.split("/")[1];
  $gitUrl = "https://github.je-labs.com/kenny-hung/$gitUrl"
  web($gitUrl)
}

function jira() {
  foreach ($branch in (git branch).split("\n")) {
    if ($branch.StartsWith("*")) {
      $currentBranch = $branch.Trim("*", " ")
      web("https://jira.just-eat.net/browse/$currentBranch")
      return
    }
  }
}

function notepad($file) {
  & 'C:\Program Files (x86)\Notepad++\notepad++.exe' $file
}

function machine.config() {
  notepad('C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\machine.config')
}

function credentials() {
  notepad('C:\Users\kenny.hung\.aws\credentials')
}

function gitka() {
  gitk --all
}

function colemak() {
  & 'C:\dev\autohotkey\AutoHotkeyU64.exe' 'C:\code\github.com\skewwhiffy\Setup\setup.ahk'
}

function profile() {
  notepad('C:\users\kenny.hung\profile.ps1');
}

function keyboard() {
  $pwd = pwd;
  cd 'C:\code\github.com\blahlicus\arbites-family\ArbitesEto2\ArbitesEto2.Wpf\bin\Debug'
  .\ArbitesEto2.Wpf.exe
  cd $pwd
}

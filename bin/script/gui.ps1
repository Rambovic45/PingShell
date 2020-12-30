# On importe les assemblys pour la GUI 
Add-type -assembly System.windows.forms
Add-type -assembly System.drawing


# On crée le background 
$bg = New-object System.windows.forms.form

# On set les propriétés du BackGround
$bg.AutoSize = $true #L'autosize
# $bg.Icon = "C:\Users\Famille\Desktop\Dev\Powershell\PingShell\PingShell\bin\img\ico.ico" ICone Mais sa marche pas
$bg.Width = 1200 #La largeur
$bg.Height = 600 #La longeur
$bg.StartPosition = "Centerscreen" # La position de démarrage de la fênetre
$bg.Text = "PingShell GUI" # Le titre de la fenêtre
# C'est tout pour le BackGround, il est temps de passer au Texte

#Texte de bienvenue
$exp = New-Object System.Windows.Forms.Label # On crée le Label (texte)
$exp.AutoSize = $true # On le met en autosize
$exp.Text = "Bienvenue sur PingShell, ce script a pour but de recuperer le ping de votre ordinateur a un serveur. Pour le moment rien ne fonctionne :,("
$exp.Location = New-Object System.Drawing.Point(25, 30)

# Texte pour le start bouton
$lfst = New-Object System.Windows.Forms.Label # On crée le Label (texte)
$lfst.AutoSize = $true # On le met en autosize
$lfst.Text = "Pour commencer le teste de ping clicker ici ----->"
$lfst.Location = New-Object System.Drawing.Point(50, 200)

# On crée le textbox pour ping
$tbp = New-Object System.windows.forms.textbox 
$tbp.AutoSize = $true 
$tbp.Size = New-Object System.Drawing.Size(75, 25)
$tbp.Location = New-Object System.Drawing.Point(300, 200)

# On crée le startButton
$startbutton = New-Object System.windows.forms.button 
$startbutton.AutoSize = $true 
$startbutton.Size = New-Object System.Drawing.Size(10, 20)
$startbutton.Location = New-Object System.Drawing.Point(400, 195)
$startbutton.Text = "Lancer PingShell"
$startbutton.add_click( {
        & $PSScriptRoot\main.ps1
    }) # On lance le script au click

# On crée le Update Label
$updatelabel = New-object System.Windows.forms.label
$updatelabel.AutoSize = $true
$updatelabel.Location = New-Object System.Drawing.Point(50, 300)
$updatelabel.Text = "Pour commencer le teste de ping clicker ici ----->"

# Le bouton de mise à jour
$updatebutton = New-Object System.Windows.Forms.Button 
$updatebutton.Text = "Mettre a jour"
$updatebutton.Size = New-object System.Drawing.Size(5, 20)
$updatebutton.Location = New-object System.Drawing.Point(300, 295)
$updatebutton.AutoSize = $true 
$updatebutton.Add_click( {
        & $PSScriptRoot\hslmanager.ps1 update
    })

# On ajoute les différents élémets à la GUI 
# Le texte
$bg.Controls.Add($startbutton)
$bg.Controls.Add($exp)
$bg.Controls.add($updatelabel)
$bg.Controls.add($updatebutton)
$bg.Controls.add($lfst)
$bg.Controls.add($tbp)

$bg.ShowDialog()    # On show le background

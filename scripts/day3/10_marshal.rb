# READ About Marshall by yourselves
# format is binary

f = File.open( 'friends.sav', 'w' )
Marshal.dump( ["fred", "bert", "mary"], f )
f.close

File.open( 'morefriends.sav', 'w' ){ |friendsfile|  
    Marshal.dump( ["sally", "agnes", "john" ], friendsfile )
}
    
File.open( 'morefriends.sav' ){ |file| 
    $arr = Marshal.load(file)
}
  
myfriends = Marshal.load(File.open( 'friends.sav' ))
morefriends = Marshal.load(File.open( 'morefriends.sav' ))

p( myfriends )
p( morefriends )
p( $arr )
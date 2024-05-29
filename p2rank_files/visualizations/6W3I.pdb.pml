
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6W3I.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6W3I.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1077,1156,1157,582,598,1158,472,572,1171,1296,1297,1298,1175,1173,1241,461,462,551,552,554,555,1795,1796,1295,1063,2170,596,595,2171,2133,2135,1735,1736,1737,1738,1765,1264,1266,1739,1249,1263,1240,1247,1248,1239,1773,1062,1215,1731] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [994,995,996,3302,711,921,678,697,980,992,3198,3199,712,734,735,736,3066,3313,3300,3301,3235,3067,3068,3063,3065,3212,3213,3064,3062,3044] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2171,2133,1735,1264,1266,1265,972,2121,2131,2161,2122,971,2170,2022,2089,2098,2099,2100,2123,1729,1699,1700,1710,1731] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [757,814,323,780,759,291,292,815,287,1099,1100,1165,787,253] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [115,123,146,116,474,491,563,564,565,589,588] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [911,945,235,236,784,792,821,796,855,839,876,212,822,877] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3165,3175,2059,2060,2061,2062,2975,2974,3154,3160,3153,2007,2792,2793,2809,2810,2811,2776,2778,2028,2029,3147,2034,2037,2779] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3554,3555,3556,3557,3559,3560,4062,3553,3721,4038,4036,4027,4028,4025,4024,4026,3724] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1983,1984,2464,2108,2274,2276,2311] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
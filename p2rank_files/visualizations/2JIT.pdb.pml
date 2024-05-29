
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
        
        load "data/2JIT.pdb", protein
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
 
        load "data/2JIT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3474,3475,3477,3513,3609,3608,3620,3621,3622,3082,2541,2526,4693,4695,2610,3099,3529,3098,4696,3103,3747,3467,3632,3504,3499,3135,3134,3158,3118,2536,2537,2542,2538,2540,2587,2588,2721,2525,3630,2570,2571,2589,2738,2736,3624,3629,2565,2566,2568,2549,2543,3739,2561,2567,2569] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [513,382,1270,380,381,227,228,229,176,1271,1272,1273,481,482,488,399,476,208,210,205,206,207,209,211,183,1280,202,479,720,722,365,1251,1257,545,1250,1247,1248,1249,1154,1254,1255,1256,1168,1169,738,737,743,178,180,181,1139,766,767,770,774,775,1116,1117,1278,1417,177,1416,1142,1143,1144,798,726] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1598,1632,2014,2017,1872,1824,1857,1862,1739,1740,1867,1453,1429,1430] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        
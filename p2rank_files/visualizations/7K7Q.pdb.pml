
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
        
        load "data/7K7Q.pdb", protein
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
 
        load "data/7K7Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1001,1002,1015,1037,1038,1194,1190,1198,684,1023,1026,701,1020,1024,1025,739,1028,136,143,146,151,150,149,183,184,133,185,169,170,127,123,124,125,128,129,130,1053,288,1178,289,1195,653,652,676,1054,685,272,271,631,647,649,1014,1305,1309,1340,1342,1298,1626,1544,1506,1341,1555,1574,1575] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [3034,3035,2267,2268,3004,3018,3019,2996,3006,3007,3005,2251,2613,2250,2159,2105,2106,2108,2158,2160,2111,2118,2637,2103,2102,2098,2099,2100,2657,2658,2667,2666,2627,2631,2634,2266,2144,3138,3134,3139,3142,3145,2121,2124,2125,2126,2983,3243,3133] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [3273,3507,3231,3509,3001,2995,2996,3006,3005,3272,3271,3009,2721,3475,2683,3437,3486,2680,2983,3240,2126] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1090,1098,772,791,792,1092,812,814,810,720,721,780,784,785] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
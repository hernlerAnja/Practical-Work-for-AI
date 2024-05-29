
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
        
        load "data/5J95.pdb", protein
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
 
        load "data/5J95.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [139,170,171,136,138,165,166,191,192,137,292,167,1256,733,734,1251,1255,1257,1248,141,1149,774,800,801,802,771,1173,1250,752,755,758,750,1172,1249,738,764,770,307,308] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3647,3430,3431,3619,3622,3427,3436,3773,3775,3882,3884,3885,3800,3756,3768,3618,3757,3442,3643,3644,3645,3646,1298,3459,3734,3725,3728,3731,3441,3758,3764,3642,3693,1675,3708,3717,3720,3721,1674,1687,1690,3722,3723,3719,3656,1672,1673,3866] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1105,1117,1106,1469,1468,1466,157,1118,1120,1119,1137,1157,1256,1258,1257,162,1124,3714,3715,1292,4090,4091,1306,1359,1384,4103,4104,4106,1357,1450,1301,1308,1309,1315,1341,1543] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [826,825,1616,1590,1349,1350,3669,3671,3697,3703,3713,1318,1647,1621,1333,1628,1645,1648,3704,1335,160,3674,1150,3676,1135,1137,1147,794] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2513,2514,2615,3074,3080,3077,3093,3072,2518,2528,2511,2515,2512,2516,2517,3495,3571,3590,3591,3494,3056,3572,3467,3479,2631,2632] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3633,2631,2632,3635,3636,3637,3638,3442,3644,3645,3646,3459,3571,3569,3479,3480,3439,3621,3417,3601,3423,3634,2499] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4061,4063,4064,4037,3472,1283,1286,1287,3766,3765,4043,4044,3734,3733,3749,3751] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3010,3031,2429,2942,2943,2461,2458] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
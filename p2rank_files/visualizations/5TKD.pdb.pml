
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
        
        load "data/5TKD.pdb", protein
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
 
        load "data/5TKD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2040,2054,2055,2056,2162,2890,2891,2868,3141,2007,2014,2017,2021,2022,3171,3135,3170,3172,3139,3130,3134,2006,3433,2015,2018,2020,3103,3131,3129,2889,2903,2880,2881,2867,2919,2163,2164,3029,3025,2146,2147,3037,3038,2519,2521,1998,2542,2549,2550,2559,2558,2892,3335,2886,2613,3373,2575,3380,3384,1999,1994,1995,1996,2001,2894,2523,2526,2533,2541,2529,2920] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [174,266,267,268,1146,1150,1009,1154,1157,1162,1163,1158,1166,654,663,1026,662,995,998,117,627,630,609,251,624,625,604,250,133,173,175,126,136,159,139,160,114,115,118,119,120,1025,997,679,992,996,1462,717,1000,987,973,974,1268,1267,141,1266,140,986,1010,1255,1299,1262,1265,1298,1264,1297,1500,1507,1511] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [956,949,951,1376,1181,1185,1186,1187,1189,1177,950,392,386,1174,354,355,357,358] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1045,1046,1047,2548,2953,2945,2962,2964,2966,2954,2957,1091,2941,2939,2940,2535] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2671,2695,2694,2706,3749,3349,3318,3557,3558,3561,2707] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
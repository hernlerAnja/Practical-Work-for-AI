
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
        
        load "data/2J4Z.pdb", protein
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
 
        load "data/2J4Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1215,1218,1150,1217,1221,1227,1231,1232,1234,1238,1239,1240,1241,1242,568,494,495,496,765,766,1130,1135,1123,1277,1275,1278,1261,1256,1257,1260,1282,1288,757,760,1152,1274,1276,177,1268,1272,1273,305,590,713,714,572,736,718,739,1151,730,732,734,118,119,121,122,176,178,288,790,792,793,1134,1136,1220,1092,1093,1095,1112,1111,1329,1331,1335,1330,1222,1354,1355] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3378,3377,3312,3379,2733,3436,3438,3418,3429,2339,2338,2879,2449,2466,3391,3406,3388,2656,2875,2464,2874,2657,2918,2921,2927,3311,3313,2279,2891,2280,2282,2283,2893,2905,2917,2897,2900,3439,3434,3435,3437,3284] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3296,3272,3273,3297,3256,3421,3422,3523,3518,3491,3492,3438,3418,3515,3381,3382,3446,3452,3457,3449,3450,3467,3439] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2235,2384,2757,2866,2758,2760,2425,2427,2444,2756,2193] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3236,3237,3240,3241,3673,3560,3590,3567,3511,3515,3522,3523,3545,3518,3544,3250,3254,3256] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [264,266,282,219,261,247,32,220,597,599,596,601] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3386,3398,3374,3152,3176] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2037,2041,2045,2043,1528,2042,1022,1494,1504,1505,2035,2036,993,997,1020] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2707,2708,4335,4336,2716,2717,3139,4333,2700,2701,2702,2709,4347,4350,4325,4327,3115] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
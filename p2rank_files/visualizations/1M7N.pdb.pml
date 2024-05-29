
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
        
        load "data/1M7N.pdb", protein
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
 
        load "data/1M7N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3662,2951,3672,3675,3664,3665,3671,2950,2918,2920,2921,2924,2941,2942,2979,2980,2949,3020,3504,3511,3516,3517,3514,3515,1,3494,3459,3458,3495,3497] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1124,1128,1118,1119,2386,1130,1126,1129,1131,1132,1148,1186,1188,1108,1073,595,1071,1074,1109,1112,537,538,539,540,1290,1280,1281,1286,1287,1277,1279,1187,564,565,566,594,635,535,557] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3693,3167,3191,3194,3586,3587,3689,3198,3200,3702,3706,3707,3164,3169,3150,2631,2578,2579,2580,2575,2576,2581,2582,2585,2769,3692,2633,2587,2588,3669] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [806,809,1202,815,384,191,782,779,192,194,195,777,788,790,1284,1308,199,1304,1321,1322,765,784] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1230,1248,618,619,2301,2252,2249,2262,2263,2265,629,2302,2266,2269,2264,990,1015] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [997,998,963,964,965,961,962,884,934,935,882,849,850,1208,1209,1238,1240,1236,1235] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3620,3621,3622,3623,3624,3625,3234,3235,3383,3382,3381,3319,3320,3346,3350,3348,3349,3371,3372] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3660,3693,3167,3585,3586,3587,3164,3169,3150,2769,3669,3690] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3400,3633,4687,4686,3616,3003,3004,3375,4634,4635,4647,4648,4649,4650] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3614,3616,3599,3600,3604,3003,3649,3152,3154,3650,3159] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        

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
        
        load "data/4O0T.pdb", protein
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
 
        load "data/4O0T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2449,2451,2491,2492,2586,2965,2967,2584,2585,2595,2599,2951,2952,3349,3436,3437,3440,3444,3434,3435,3450,2760,2761,3449,3451,3452,3453,3454,3338,3365,2983,2985,2987,2835,3366,2705,2728,2730,2603,3446,3447,2704,2701,2736,2726,3442,2493,2601,2602,2455] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [242,1209,780,260,368,1131,1132,1201,218,258,259,749,751,755,353,744,753,737,1200,1202,599,370,1207,1203,1206,732,733,214,220,1104,772,773,758,775,241] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3450,2760,2761,3449,3451,3452,3453,3454,2725,2751,2754,2755,2759,2757,3444,3273,3234,2752,2788,3258,3274,3254,3255,2829,2845,3225,3226,2785,2786,2730,3446,3447,2723,2726] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1233,1235,458,459,460,433,434,1340,1350,3517,3527,430,3529,429,3523,3867,3868,3861,3848] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [370,490,491,492,1210,1203,717,730,732,733,609,1202,1217,596,522,521,615,612,368] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1344,1707,3906,3907,3909,3911,1343,1452,1732,1733,1736,1738,1740,1764,1437,1726,1728,1435,1440,1445,3908,3910,3905,3883] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3472,3520,3470,3468,3469,1697,1698,1689,3625,3900,1700,1704,1699,3521,3579,3580,3544,3545,3462,3612,3610,3615,3605] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1005,1007,1011,2037,2042,2046,1492,1003,1004,1491,1499,1501,2035,2036,1310,1493] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [434,468,493,235,3512,3528,1231,1233,1230,491,492,1207,1208,1222,1205,242,1209,1077,1225,3511,3513] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3029,3030,3334,3339,3340,3341,3342,3764,3808,3809,3328,3556,3835,3557] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
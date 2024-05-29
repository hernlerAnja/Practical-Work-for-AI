
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
        
        load "data/6ITT.pdb", protein
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
 
        load "data/6ITT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3087,3089,3676,3751,3754,3756,3758,3773,3759,3088,2977,3772,3774,2657,2704,3770,2844,2845,3251,3242,3677,3276,2703,2829,3214,2654,2655,3194,3195,2827,2828,3177,3199,3217,3220,2651,2652,2841,2837,3241] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1308,1309,1386,1402,1404,1405,1406,1397,716,280,281,284,269,846,849,283,842,828,844,333,473,474,606,470,1391,717,823,332,458,870,871,874,880,854,855] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1395,1223,1229,1231,1224,1244,629,631,1184,1185,1215,1218,1219,630,1220,637,638,639,600,606,605,604,1392,607,603,710,664,71,89,90,62,1377,1383,1384,1388,1235] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3379,3400,3407,914,1346,3325,3326,3377,3378,3714,3715,3286,3287,3433,1347,3408,3344,3343,3430,3319,3324,3327,1013,3331,1011,1043,1035,916,953,954,955,1042,1068] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3000,3010,3086,2971,2975,2977,3001,3002,3591,3597,3599,3612,3613,2460,2461,2442,2966,2967,3752,3753,3601,3603,3605,3760,3763,3745,3751,3756,3759,2970,2976,3036,3549,3550,3081,3584] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [23,24,1698,29,30,33,34,35,15,16,25,28,1696,1697,1191,1192,1195,1188,1189,1190,2256,2274,2277,2259,2258,1695,1711,1732,2266] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3588,3591,3592,3001,3002,2442,2431,2434,2445,2460,2461,3586,3580,3574] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1395,1408,1409,1410,1411,1416,1418,1407,1254,1256,1430,1449,1499,1500,1450,1394,1253] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3425,856,866,868,1332,1334,4749,855,3369,3392,3422,3421,4750,4751,3391,3417,3418,3390] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3696,3697,3692,3700,2386,2388,3203,3208,3691,3200,3202,3201,3227,3702,3065] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
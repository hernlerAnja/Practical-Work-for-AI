
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
        
        load "data/4PTC.pdb", protein
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
 
        load "data/4PTC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3458,3549,3550,3551,3554,3548,2903,3030,2720,3035,2719,3031,3055,3046,3048,3052,3081,3446,3473,3080,2601,2638,2639,2597,2598,2599,2733,2735,2737,3555] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [651,637,643,645,213,297,310,312,296,626,1043,1042,1054,1146,1067,1145,1151,1154,313,314,386,648,652,631,477,671,168,214,196,198,166,165] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1031,1016,3980,4009,4010,183,4006,187,194,196,198,189,192,180,1046,1154,1153,1167,1170,1168,1169,1054,3983,3995,4002,4003,4005,4004,1014,1174,1277] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1583,3421,3434,3435,1607,2611,3447,3451,1606,2619,2623,2737,3555,3568,3569,3570,1598,3576,3458,1579,2614] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3249,3250,3191,3217,3218,3219,3220,3221,3222,3197,3150,3494,3493,3115,3149,3480,3113,3116,3071,3072,3074] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [704,734,779,845,1086,809,810,811,812,1083,1085,701,720,735,786,1087,1088,1073,1105,664] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1282,1589,1615,1616,1250,3758,1279,1319,1268,1320,1321,1247,3986,4019,3996,3997,1278,1359,3657,3660,1348,1354,1356,1590,3724,3723,3725,3752,3760,1582,3688,3689,3692,4018,3659] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [147,148,149,319,606,558,220,222,224,219,221,223,225,21,24,14,126,128,538,540,541,304,305] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1598,3572,3576,3574,3650,3674,3411,1606,3570,3649,1596,1623,3664,3666,2618,1624,1627,1793,1801,1812,1811] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4197,4216,4194,4206,4003,4004,1171,1173,1264,375,4215,1169,1236,1186,1232,4187,1188,4189,1240,1006,1254,1256] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3024,3025,2559,2952,2547,2677] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4026,4024,4197,4216,4206,4003,4215,4027,1254,1256,4022,4023,4025,4052,4090,3773] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3116,3117,3087,3920,3247,3249,3250,3191] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1794,2802,2803,2804,3588,3589,3590,3649,3644,3632,3573,3574,3650,3674,3411,3580,1793,1790,1786,1788,3664,3666] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3777,1364,1375,1742,4148,1385,3766,4160,1763,1741,4169,4146,4147,3787] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [4537,4535,4323,3228,3189,3199,3200,3203,3922,3924,3925,3926,4315,3916] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1641,1642,1643,1333,1622,1649,1682,1371,2007] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
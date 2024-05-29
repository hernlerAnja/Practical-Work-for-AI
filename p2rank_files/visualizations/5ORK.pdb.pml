
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
        
        load "data/5ORK.pdb", protein
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
 
        load "data/5ORK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4080,3756,4099,4055,4081,4053,4082,3862,3906,4588,4056,4057,3721,3725,3726,3728,4613,4614,4615,3791,3833,3834,3875,3876,3831,3724] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1040,1111,1862,1863,1864,1083,1348,1005,1124,969,970,973,1002,972,1006,953,957,1837,1305,1330,1331,1155,1125,952,1329,974,975,1304] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1437,1439,1441,1440,906,908,909,910,911,773,774,1338,1339,1340,539,775,937,538,372,433,434,435,369,370,375,553,554,555,1442,1445,1446,1448,390,389,934,935] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4089,4190,4191,4090,3685,3686,3688,3701,3306,4193,4192,4196,4197,4198,4188,3302,3304,3289,3121,3184,3185,3186,3119,3125,3123,3124,3170,3305,4199,4062,4091,3141,3120,3127,3126,3703,4075,3657,3659,3682,3290,3524,3526] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2997,728,738,3018,3019,729,731,732,733,737,781,782,918,919,3613,3614,734,2980,2988,2994,2998,3398,2993,2992,3359,3360,3361,3362,3021,3630,3389,3358,3386,3388,3395,3397,3577,3578,3611,3363,3610] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3057,3058,3059,3060,1193,2655,2658,2682,2656,3241,3242,749,750,1198,1200,3025,3028,3032,1168,1165,1167,1194,1195,3553,3554,3024,3071,3226,1226,1227,70,72,3049,1170] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3144,4051,4199,3141,3150,3160,3148,3153,3154,4035,4075,4225,4223,4224,3380,3381,3306,4198,3156,3169,3170,3305,3322,3155,3157,3344,3387] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [554,555,1446,1448,390,419,1447,1472,1284,399,1473,393,397,629,630,1474,593,571,666,402,404,405,406,568,418] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4513,4514,4517,4540,5384,5395,2801,5373,5390,4499,2800,2795,2812,5396,4505,3969] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
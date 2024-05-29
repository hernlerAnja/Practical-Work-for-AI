
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
        
        load "data/5OTL.pdb", protein
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
 
        load "data/5OTL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4032,4035,4036,4573,4597,4660,4662,3855,4568,4569,4607,3854,3706,3742,3744,4611,3770,3703,3702,3699,3701,3710,3711,3716,3813,4609,4034,4059,4060,4061,4078,3885,3841,3849,3704,3705,3687,3844,4658,4659] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1310,1002,1073,1076,1003,1829,1830,1831,1832,973,974,975,976,978,979,1117,1805,1800,1801,1824,1293,1291,1264,1266,1267,1268,1879,1071,1040,1081,1045,1087,1086,1807] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [433,372,434,538,539,1301,373,370,368,369,1278,950,951,952,934,907,909,911,435,553,554,555,419,1410,1279,1300,1402,1273,774,910,1399,1403,773,1302,1407] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4014,4045,4047,4176,4177,4178,3120,3123,3149,3134,3135,3127,3128,3132,3106,3107,3108,3111,3165,3110,3119,4170,4341,4329,4030,3129,3130,4202,4203,4204,3359,3360,3136,3139,3396,3284,3301,3354,3355,3361,3362,3366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4070,4046,3099,3100,3105,4167,4069,4041,4170,4171,4172,4047,4175,4178,3106,3107,3108,3111,3163,3165,3110,3119,3120,3149,3503,3505,3268,3637,3639,3641,3164,3284,3285,3283] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [406,409,629,630,393,397,398,399,400,636,571,666,405,575,402,403,404,414,568,418,554,555,390,419,1410,1277,1279,1434,1287,1435,1262,1246,1261,1429,1409,1561,1573,1436,1286] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3461,3462,243,646,827,644,647,610,611,267,270,826,247,249,585,586,612,637,635,638,605,607,608,609,3459,3468,3511,3512,246,241] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [273,274,277,280,281,3480,3897,3918,3919,3922,3923,3924,3925,3928,803,5406,5408,306,307,308,309,5405,491,802,253,5432,807,801,320,3957,3956,2800,2802,298] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [5395,4502,2791,5389,5394,5372,2781,3948,4525,4490,4498,4499,5341,5351,4484,2774,2801] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
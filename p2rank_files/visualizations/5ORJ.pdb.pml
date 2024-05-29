
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
        
        load "data/5ORJ.pdb", protein
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
 
        load "data/5ORJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4100,4606,4117,4632,4071,4072,4073,4074,4098,4099,4075,4680,3739,3741,3742,3745,3726,3880,3849,3852,3893,3894,3924,4602,4631,3809,3774,3883,4625,3781,4603] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [975,1302,1304,1305,1306,1837,1329,1348,1002,1004,1040,1863,1155,1111,1125,1862,1083,1082,1078,1114,969,970,973,974,957] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4208,3542,3675,3677,3679,3680,4206,4209,4210,3324,4211,4214,4215,4217,3202,3203,3204,3144,3145,3323,3188,3307,3322,4093,4080,3147,3158,3159,4108,3719,3721,3143,4107,3544,3308,3700,3141,3703,3142,3139] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1440,1340,906,908,434,538,773,1439,775,435,1338,1339,539,931,934,935,937,1437,433,372,374,375,369,370,553,554,419,555,1441,1447,1445,1446,1448,909,911,910] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [267,270,246,247,249,243,646,647,3550,3498,3507,3551,3500,3501,826,609,610,611,612,827,644] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [274,802,803,3962,5425,5424,3995,3996,2832,2834,3961,277,281,308,309,3967,3969,3963,3964,3519,253] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [827,859,860,609,610,611,612,3497,3498,862,3500,3501,3502,3503,826,270] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3107,3314,3105,3106,3654,3330,3332,3057,3082,3058,3055,3083,3587,3597,3639,3640,3598,3601,3602,3603,3604] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [666,630,628,1472,1474,555,1447,1448,1284,571,554,405,419,402,406,393,397,409,593,570,636] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1640,1306,1307,978,979,1856,1913,1855,1908,1909,1314,1315,1316,1317,1625,1639] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1762,1748,1766,1763,1754,44,1218,61,2639,2642,2644,1789,2633] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4523,4531,4532,4535,5360,4517,5370,2806,2823,4558,5402,5391,5408,5414,5413,3987] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
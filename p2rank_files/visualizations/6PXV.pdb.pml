
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
        
        load "data/6PXV.pdb", protein
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
 
        load "data/6PXV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10029,10031,10264,10032,10239,10240,3575,3577,3578,10250,3563,9992,10223,3558,3559,9738,3614,10288,3377,3378,10042,10043,10040,3613,3615,3616,4499,10242,10228,10224,10265,11164,10243,10278,10279,10280,10273,10027,9801,10009,9758,9759,9740,9732,3344,3574,3093,3094,3585,3073,3075,3327,3362,3364,3366,3599,3375,3367,3623,3067,10281,3136,3600,3608] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [3951,3952,5271,3922,4491,4492,4505,4508,4518,5269,13968,13970,13974,13937,13976,3919,3920,5306,13938,13940,4548,4515,4516,4549,4535,3912,3913,13739,13741] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [11213,11156,11157,11170,11173,11183,11180,11181,10616,11200,10617,10584,10585,13591,10587,11214,10577,10578,13599,11971,11934,11936,13560,13593,13561,13563] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [3678,3603,4536,4537,4538,3424,3667,3669,3416,3418,3430,3431,3422,3426,3427,3656,3664,3635,3627,3637,3677,4542,4532,4522,4525,3671,3676,3672,3673,3686] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [10336,11197,11201,11202,11207,10338,11187,11190,10343,10341,10342,10302,10268,10292,10300,10334,10083,10087,10089,10321,11203,10329,10332,10081,10351,10091,10092,10095,10096,10337] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [1111,1553,1563,1564,1560,1562,1575,909,911,1576,1670,1672,908,1114,1503,1547,1516,1520,1521,1112,1519] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [8218,8229,8225,8227,8228,8184,8181,8185,8212,8240,7573,7776,7777,7779,7574,7576,8168,8241,8186,8337,8335] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3926,3930,3932,3935,3933,3938,3939,4202,7879,5259,5260,5298,7664,7665,13757,13760,13765,5230,5233,5234,5232,5256,5258,3937] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [1000,10598,13388,13380,13383,11962,10603,10604,10867,11925,999,1214,10591,10600,10595,10597] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1809,1811,1812,1991,1828,1999,56,1983,1985,26,1975,57,23,41,45] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [6721,6722,6688,6691,8477,8476,6710,6706,8493,8640,8648,8650,8664,8656,8474] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [12015,2527,12013,13527,13529,269,270,722,711,493,701,703,482,250,252,253,491] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [6915,6917,6918,7156,7158,7147,7387,5350,6934,6935,13906,9192,7376,7366,7368] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [11849,11872,11874,11871,3162,11140,11904,11905,3143,3144,10281,3145,2876,2893,2895,3141,3159,2873,2872,2871,11883,2674,10279,10280,11145,11146,11148,11144] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [5184,9558,9560,9827,9824,9808,9809,9810,9806,9536,9537,5206,5207,5218,9339,9538,9541,5239,5240,5209,4480,4479,4481,4483,3615,3616,3614,4475] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [10876,10888,13395,13397,13358,13373,10569,10594,10576,13353,10906,10556,10558] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [3891,3893,3904,3911,4223,4241,13730,3929,13735,13750,4211,13772,13774] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [956,1172,950,2708,741,948,742,2726,1147,2725,2727,947,2696] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [7812,9392,9390,9391,7837,9373,9361,7621,7406,7407,7615,7612,7613] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [1850,1808,1810,4,1832,1834,1756,1757,27,29] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [8515,8473,8499,8421,8422,6692,6694,8475,6669,8497] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        
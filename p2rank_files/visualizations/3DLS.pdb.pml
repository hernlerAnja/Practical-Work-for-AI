
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
        
        load "data/3DLS.pdb", protein
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
 
        load "data/3DLS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4639,1495,1502,1509,1510,1511,1515,4679,4680,4649,4646,4676,4677,4584,4585,4587,1526,1514,4470,4471,4477,4478,1525,4479,4480,4498,4792,4793,4795,4504,4797,4798,4467,4454,4468,1516,4656,4658,4660] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [3705,3710,3697,3704,239,241,242,146,147,148,149,3721,209,201,208,211,238,3708,153,30,39,3711,40,41,42,3720,11,16,66,32,34,33,218,220,221,222,60,360,361] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [2447,2448,2445,2446,5901,5908,5921,2438,2476,2478,2479,5915,5916,5917,5932,2475,2477,2383,2380,2384,2386,5849,5821,5919,2432,2441,2390,2455,2457,2269,2270,2271,2272,2297,2276,2277,2279,5931,2458,2459,2248,2253,2265,2267,5922,2594,2596,2597,2303] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [227,229,228,333,759,758,350,1287,1289,1282,1283,1286,1290,1278,1280,187,183,817,180,1200,799,334,778,781,173,174,179,175,177,774,1184,1172,814,1281,628,349,348,531,559] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4786,4787,5690,5691,5694,5695,4785,5163,5686,4666,4667,4770,5162,5167,5697,4618,4621,5221,4611,4612,4615,4617,5205,5580,5607,5689,5608,5688,4771,5178,5182,5203,5185,4963] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3012,2994,2996,2570,2414,3371,3476,3009,2411,2417,2420,2424,3398,3475,3399,2973,2976,2586,3482,2465,2466,3481,3484,2568,2569,3478,2953,2954,3473,3477,2823,2958,2584] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [7284,7421,7436,6985,6986,6830,6880,6881,6882,6832,6827,6840,7286,7440,7934,7935,7856,7930,7932,7933,7941,7828,7840,7416,7417,7000,7001,7002,7458,7457,7459,6833,6836,7472,7475,7439,7855] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [10130,10131,10129,9219,10134,10024,9048,9101,9102,9103,9047,9052,9053,9217,9218,9616,9631,9202,9201,9203,9050,10128,9481,10052,10126,9611,9612,9654,9667,9670,9634,9652,10051] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [8937,8918,8919,8909,8916,8917,9227,9094,9092,9113,9116,9085,9112,9115,9020,9229,9230,8943,9022,8911] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [11269,12329,12331,12332,12251,11323,11324,12333,12334,12337,12223,12338,11419,11271,11272,11420,11825,11267,11268,11273,11274,11806,11434,11436,11805,11846,11848,11861,11864,11828,12250] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [11154,11444,11127,11136,11446,11160,11241,11243,11313,11315,11306,11126,11133,11134,11135,11336,11337,11333,11334,11240,11128] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [6686,6688,6689,6695,6696,6698,6719,6895,6799,6800,6802,7012,6871,6873,6713,7010,6864,6894,6891,6892,6690] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1500,4639,1495,1501,1502,1515,4679,4647,4649,4646,1412,1443,4642,4467,4454,1516,4449] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [12218,12227,12503,11880,11882,11883,12219,12490,12491,12764,12754,12757,12761,12505,12715,12716,11906,12746,12753,12477] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [10525,10575,10578,10313,10315,10526,10300,10301,9686,9688,9689,10028,10019,10020,10563,10564,10571,10012,10287,10303,10010] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5237,5239,5240,5271,5263,5576,6080,6132,6117,6125,6110,5841,5867,5854,5855,5857,5582,5583,5584,5566,5568,5575] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [7188,7954,7956,7001,7002,7019,7020,7060,7059,7055,7171,7082,7067] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [7491,7493,8095,8107,8369,8372,8365,7823,7824,8109,8320,7517,8350,8357,7494,7814] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1451,1158,1160,1175,1176,833,1166,1167,1168,1461,1463,835,1726,1725] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [1143,1288,1289,1428,1422,1427,1160,1177,1184,1434,1303,1310] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [1013,981,1647,825,1682,976] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        
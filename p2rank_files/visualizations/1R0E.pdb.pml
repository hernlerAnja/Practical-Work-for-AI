
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
        
        load "data/1R0E.pdb", protein
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
 
        load "data/1R0E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1198,1199,1202,1209,784,1197,1225,1226,1307,204,210,208,765,755,758,749,751,240,259,370,1306,578,733,239,241,257,258,738,355,1309,1312,1308,812] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4073,4069,4070,4067,4068,3339,3131,3232,3494,4076,2998,2999,3000,3001,3002,3959,3960,3544,3545,3958,3987,3986,2965,2967,2969,2971,3018,3019,3020,3510,3512,3519,3526,3116,3492,3499] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4793,458,460,1348,4795,4796,1437,4788,4791,4803,4805,4792,1332,1159,4551,4576,4554,1435,457,487,4813,4814,413,4812,4831,410,411,229,4561,4581,4585,4586,1330,228,4783,1349,1350,1397,4781,1419,1420,1414,4611,4610,4583] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2033,2035,3217,3219,3221,2031,1792,4091,4093,4111,4180,4109,4110,2022,2027,2032,2034,1793,3920,4175,4181,4206,2044,2030,2042,1850,1815,4196,4198,2052,2053,2070,1825,1819,1820] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1792,1800,1801,3930,4089,4090,4091,4092,4093,4097,1773,1775,3946,3947,3962,4076,2989,2992,2993,2996,2999,3001,3133,3970,4074,4075,3959,3961,3963,1825,2986,2983,1765,1769,1776,1774,1766] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [229,4560,4561,4562,4586,1169,1328,1329,1330,1313,1314,1315,1311,225,227,228,231,232,238,240,222,4553,1166,1335,1336,4554,4535,4537,1185,1186,1198,1200,1202,1209,4527] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1554,1556,4315,1970,1972,1996,1562,4732,4733,4745,4746,4747,1566,1567,1568,1971,1984,1985,1986,4757,4306,4319,4317,4323,4327,4328,4329] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1429,1428,1431,1502,4298,1529,1772,1810,1778,1783,1784,1500,1539,4224,4571,1463,4533,4545,4570,1430,4544,1535,1537,4187,1540,4189,4192,4261,4262,4263,4290,4191] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [28,29,42,711,661,381,660,641,665,265,270,268,184,267,269,159,161,266] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1233,827,828,853,996,1244,1247,956,957,958,959,960,1246,995,955,870,871,869] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3142,3422,3472,3421,3402,2790,3026,3027,3030,3031,2945,2789,3123,2922,2803,2920,3124,3404] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2051,2052,2053,2070,3174,1824,1825,1820,1850,2030,3191,1792,4091,2989] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3863,4362,3860,3861,3885,4361,4354,4355,4356,4357,4359,4363,4124,4125,4364,4367,4391,5096,5114,3835,5102,5105,5107,5414,5415] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3687,3719,3721,3694,3720,3992,3756,3757,4005,4007,4008,3630,3631,3632,3994,3588,3589] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1600,1601,1100,2653,1099,1124,1630,2353,2341,1102,1598,1602,1603,2335,1606,2346,1593,1594,1595] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1694,798,800,842,795,1478,1476,1737,1738,1467,1201,1462,1491,1492] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [2579,2581,2746,2749,2565,2556,2742,2744,2464,2472,2489,2445,2487,2551,2546] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
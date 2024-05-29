
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
        
        load "data/7JIS.pdb", protein
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
 
        load "data/7JIS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5322,1257,5328,5331,5332,5333,5334,5698,5695,5697,5916,5917,5326,5911,5914,5924,5910,4289,4295,4296,4293,4576,4266,4267,4268,1244,1258,4264,4265,4330,4333,5728,5727,4605,4607,4609,4651,4652,5723,5724,5717,5719,5718,5752,5753,5754,5756,1859,1860,5894,5901,5999,4304,4305,1261] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5453,5454,5520,5607,5995,5522,6553,6554,5468,6558,6559,6560,6008,6002,6006,6011,6551,6552,6467,6054,6468,6533,6440,6534,6037,6039,5517,5521,5906,5908,5688,5689,5690,5691,5990,5606,5991,5500,5626,5627,5919,5663] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3018,3028,3033,3034,3021,3024,3173,3174,3009,2835,2814,2817,2823,8548,3026,4723,4724,3216,3220,7770,7771,7772,3186,3189,7803,7804,8509,8510,8511,7775,8547,4698,4716,4717,4718,4706,7777,7801,7802,7813,7836,7779,7742,7743,4710,3031,7780] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4418,4404,4410,4411,4139,4142,4425,4126,4447,4450,4452,4456,4457,4141,2665,2921,4427,2897,4441,4143,4152,4153,2664,2662,2663,2920,2922,4465,4086,4162,4163,4164,4192,4082,4372,4133,4090,4115,4124,4395,4370] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2948,2893,2890,2947,2970,2973,2975,2977,2857,2993,2859,960,953,957,2900,2902,951,2894,4415,3149,943,944,945,2980,3158,3161,3165,3146] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [6339,6337,6665,6714,6712,6460,6678,6683,6662,6668,6666,6669,6413,6357,6393,6414,6415,6642,6544,6523,6543] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [866,894,895,896,897,898,7874,863,864,7836,7837,7838,7864,7865,7835,7834,7896,7895,4698,4690,858,3164,3176,3179,3180,4744,3178,867,4741,893,930,931,4736,4715,4713] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4565,4859,4861,2071,2072,1185,1186,2041,2039,2042,2043,2044,4898,2073,5305,1746,1747,1233] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3128,3132,3133,3130,3031,2832,3117,4388,4386,4385,3047,4710,3026,4723,4724,3136,3140,3018,3021,3024,2835] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [7028,7065,7180,7030,7218,7155,4070,7038,7040,7219,4094,4063,4065,4121,4122,4111,4067,4105,7090,7179,7178] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [5818,1273,1858,1859,1860,1856,1274,5896,5756,5780,1855,1888,1891,1892,5897,5855,5856,5873,6515,1886,1913,1911,1912,1914,5876,5879,1281] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4936,4964,4934,4666,4668,840,842,834,845,4669,4641,4955,4957,5938,5943] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1659,1660,1165,1167,1157,1158,1658,1781,1688,1689,1675,1778,1789,1792,1507,1502,1530] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4980,4950,5272,5599,5530,5268,5550,5295] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
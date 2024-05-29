
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
        
        load "data/4V01.pdb", protein
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
 
        load "data/4V01.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1561,1598,1558,1779,1781,1785,1787,1618,1628,1643,1645,1646,3835,1629,1657,1777,1778,1634,3968,3952,3972,3947,3948,3976,1792,1799,3961,3964,3965,3750,3971,3828,3826,3753,1786,1788,3810,3837,3838,3820,3821,3983,1612,1596,815,1595] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2882,2402,2403,3402,3403,3404,3405,3406,3407,2523,2527,2908,3315,3316,2886,2928,2511,2898,2904,2907,2925,2926,2366,2372,2367,2369,2370,2757,3388,3389,3392,2684,2652,2756,2935,2962,2510,2881,2519,2864,2685] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1223,193,324,328,330,662,192,332,1129,563,679,680,684,485,1210,453,486,316,164,166,168,169,705,702,706,1224,1225,1207,1221,1130,1206,723,760,165,171] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [486,484,511,1000,482,483,1210,450,453,477,478,1038,563,1197,560,573,553,556,1205,999,1051,1055,1057,1059,1211,1053,1214,1045,1204,1207] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3382,2757,3385,3245,3386,3387,3389,3392,3393,2683,2684,3243,2649,2652,3239,3396,2754,3378,3379,2750,3189,2710,2676,2677,3188,3226,3231,2647,2714] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3950,3942,3692,3695,3918,3548,3960,4103,4105,3965,3967,3525,3829,3830,3725,3907] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1500,1503,1339,1362,1763,1773,1637,1638,1755,1729] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1344,1647,1648,1649,1651,1653,1654,3875,3876,3877,1631,1641,1644,3902,3933,3910,1275,1276,1302,1320,1308,1620] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1746,1684,1685,1711,1713,3461,3462,3488,3839,3840,3841,3506,3530,3843,3845,3846,3850,3851,3833,3836,3494,3812,1721,1683] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1572,1309,1307,1282,749,750,1295,1101,1103] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
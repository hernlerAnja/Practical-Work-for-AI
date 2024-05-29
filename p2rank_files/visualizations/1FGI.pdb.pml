
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
        
        load "data/1FGI.pdb", protein
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
 
        load "data/1FGI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1154,728,731,171,170,176,169,185,207,184,736,174,175,1155,759,786,188,192,748,749,1231,202,198,199,200,193,197,1238,1249,1232,221,222,223,722,710,173,338,352,476,351,587,508,589,706] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3371,2448,3003,3370,2438,2439,2443,2444,2445,2446,2415,2416,2421,2422,2976,2975,2992,2993,2996,3447,3448,2468,2575,2417,2419,2467,2469,2588,2420,2966,2972,2954,2833,2949,2950,2721,2757,2589,2591] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1740,1728,1854,1855,3886,3887,1737,3884,1871,1875,1878,1879,1880,1881,1882,4028,1739,4002,4015,4001,1738,3875,3877,4029,4026,4027,4022,4025,4032,4033,1893,1886,3799,3802,3839,4044,3869,4018,4019,3881,3870,4040,4043,1655,1872,1873,1712,1722,1723,1706,1709] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4009,4166,4168,3741,3744,3970,4019,4021,3774,3878,3879,3574,3996,4014] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1100,1103,1239,1262,1140,191,1139,1314,1316,1088,1272,1373,1414,1415,1128,1102,1129,1101,1412,1417,1453,1454,1422,1315,1320,1413,1452] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1714,1396,1432,1725,1748,1753,1365,1366,1390,1408,1392,3954,3987,1738,3962,3952,1744,1752,1756,3925,1742,1735,1741,1743,1747] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1597,1427,1731,1821,1822,1823,1786,1627,1872,1874,1857,1732,1867] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4084,4086,4089,4152,4300,4301,4302,4232,4125,4299,4337] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4253,4257,3250,3251,3252,3254,3697,3698,3700,4239,4241,3711,4242] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
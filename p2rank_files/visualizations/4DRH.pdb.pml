
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
        
        load "data/4DRH.pdb", protein
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
 
        load "data/4DRH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [584,579,581,582,586,589,590,850,444,848,846,847,849,598,798,799,800,824,826,856,592,456,1660,1662,1697,477,478,1727,530,538,1729,522,524,525,526,1726,583,625,621,623,368,370,446,919,599,921,597,1725,1724,1158,1157,1689,1199,1680,1687,1719,1720,1723,1197,1679,1657,1681,1691,1187,1188,1198,1200,1652,1656,1629,1753,1755,1756,1757,1758,1752,1135,1138,1156,1194,1195,1196,830,841,1710,1709,1124,1125,1126] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [2927,2894,2895,2896,2901,3413,3415,2905,3482,3483,3484,2928,2969,3479,3481,3449,3450,3451,2903,2934,2964,2965,2967,2968,2627,3376,3377,3382,3383,3387,3407,3409,2970,3385,3423,3388,2617,2966,2628,2613,2643,2612,2232,2362,2369,2373,2375,2587,2381,2585,2311,2312,2313,3452,3455,2309,2372,2380,2402,2403,2404,2405,2406,2408,2161,2247,2268,2269,2159,2160,2236,2238,2707,2708,2645,2365,2367,2364,2366,3453,2907] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1250,1256,1259,1260,1261,1262,1254,1556,1594,1554,1286,1288,1524,1555,1557,1558,1562,1553,1321,1323,1258,1290,1294,1296,1295,1298,1527,1564] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [3045,3264,3262,3081,3082,3085,3078,3107,3109,3046,3289,3260,3291,3292,3296,3290,3047,3048,3049,3328,3330] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        